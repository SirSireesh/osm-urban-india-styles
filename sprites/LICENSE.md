# Sprite license & provenance

This sprite is regenerated from the source SVGs kept with the style that uses
them, under `../styles/urban/`. Both urban and urban-dark share this sprite.

Sources were originally taken from
[`hyperknot/openfreemap-styles`](https://github.com/hyperknot/openfreemap-styles)
at commit `72e1480`.

## Icons — CC0 1.0 (public domain)

`svgs/svgs_iconset/` — the [Mapbox Maki](https://github.com/mapbox/maki) POI
icon set. No attribution legally required.

`svgs/svgs_not_in_iconset/arrow.svg` — derived from
[Wikipedia](https://commons.wikimedia.org/wiki/File:Arrowright.svg), public
domain.

`icons_unique/shield_in_nh_*` — India National Highway shield blanks from
[openstreetmap-americana](https://github.com/osm-americana/openstreetmap-americana)
(`icons/shield_in_nh_{2,3,4}.svg`), CC0 1.0. No attribution legally required.
`shield_in_ne_*` are the same blanks recolored blue/white for National
Expressways.

## Icons — CC-BY 4.0 (attribution required)

`icons_unique/` (except the shields above) — `oneway`, `airport_11`, road
shields (`road_*`, `us-highway_*`, `us-interstate_*`, `us-state_*`),
`circle_11_black`. From
[osm-bright-gl-style](https://github.com/openmaptiles/osm-bright-gl-style),
derived from Mapbox Open Styles.

`svgs/svgs_not_in_iconset/` (except `arrow.svg`) — `default_*`, `dot_*`,
`pedestrian_polygon`. From
[osm-liberty](https://github.com/maputnik/osm-liberty).

Both are style *design* under CC-BY 4.0; the style *code* is BSD 3-Clause.
Credit: © OpenMapTiles, © Mapbox, © KlokanTech.com & OpenMapTiles contributors.

## Build tool — ISC

`spritezero/` is a fork of
[`mapbox/spritezero-cli`](https://github.com/mapbox/spritezero-cli), ISC
licensed. Its `node_modules/` are not vendored; `create_sprites.sh` installs
them on first run.
