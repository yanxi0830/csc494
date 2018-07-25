# Construction

## Description
See [Problem Diagram](construction.jpg)

##### Initial States
- P `glass-part`, P `clay-part`, P `wood-part` at `glass-warehouse`, `clay-warehouse`, and `wood-warehouse`
- P empty `composite` at `construction-area`, each awaiting 1 glass, 1 clay, and 1 wood
- T trucks to move the parts at `construction-area`
- W workers to assemble the parts at `construction-area`

##### Actions
- `load-truck`: load truck with parts
- `unload-truck`: unload truck
- `board-truck`: worker board the truck
- `disembark-truck`: worker get off the truck
- `walk`: walk to a certain location
- `drive-truck`: drive the truck to location
- `put-clay-on-comp`, `put-wood-on-comp`, `put-glass-on-comp`: put material on the composite
- `assemble-parts`: assemble the composite consisting of clay, wood, and glass

##### Goal
All composite parts are assembled at the construction-area