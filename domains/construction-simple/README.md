# Construction-Simple

## Description
See [Problem Diagram](construction.jpeg)

##### Initial States
- P parts in the `warehouse` waiting to be delivered and assembled to the `construction-area`
- T trucks to move the parts
- W workers to assemble the parts

##### Actions
- `load-truck`: load truck with parts
- `unload-truck`: unload truck
- `board-truck`: worker board the truck
- `disembark-truck`: worker get off the truck
- `walk`: walk to a certain location
- `drive-truck`: drive the truck to location
- `assemble-parts`: assemble the part

##### Goal
All parts are assembled at the construction-area