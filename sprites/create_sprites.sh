#!/usr/bin/env bash
# Mirrors openfreemap-styles/sprites/create_sprites.sh, adapted to the
# system Node (no nvm on this machine).
#
# Sources live with the style they belong to, under ../styles/urban/.
# urban-dark shares this sprite and has no sources of its own.
#
# Output: sprites/oui_<hash4>/ — hashed on contents, since cached sprites
# must stay immutable once published.
set -e

rm -rf _tmp_src _tmp_dst
mkdir -p _tmp_src _tmp_dst sprites

cp -r ../styles/urban/svgs/svgs_iconset/. _tmp_src/
cp -r ../styles/urban/svgs/svgs_not_in_iconset/. _tmp_src/
cp -r ../styles/urban/icons_unique/. _tmp_src/

(cd spritezero
  if [ ! -d node_modules ]; then
    npm i
  fi
  node spritezero-cli.js ../_tmp_dst/sprites-urban ../_tmp_src/
  node spritezero-cli.js --retina ../_tmp_dst/sprites-urban@2x ../_tmp_src/
)

rm -rf _tmp_src

# calculate dir hash
DIR_HASH=$(find _tmp_dst -type f -exec md5sum {} + | sort -k 2 | cut -d " " -f 1 | md5sum | cut -d " " -f 1)
DIR_HASH_CUT=${DIR_HASH:0:4}
echo "$DIR_HASH_CUT"

HASHED_DIR="sprites/oui_$DIR_HASH_CUT/"
rm -rf "$HASHED_DIR"
mv _tmp_dst "$HASHED_DIR"
