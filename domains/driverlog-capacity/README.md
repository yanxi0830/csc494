# Driver Log

## Description

See [Problem Diagram](driverlog.png)

##### Classical Problem
- Drivers that can walk between locations connectd by a path
- Trucks that can drive between locations connected by a road
- There is always one intermediated location on a footpath between two road junctions
- Trucks can be loaded or unloaded with packages (with or without a driver present)
- The objective is to transport packages between locations, ending up with a subset of packages, the trucks, and the drivers at specified destinations. 

##### Generalization
- Indistinguishable drivers, trucks, and packages
- Fixed number of locations, paths, road, intermediate location

##### Initial States
- N packages at L1, M drivers at L2, K trucks at L3

##### Actions
- `load-truck`: load truck with package
- `unload-truck`: unload truck
- `board-truck`: driver board the truck
- `disembark-truck`: driver get off the truck
- `drive-truck`: driver the truck to location
- `walk`: walk to a certain location

##### Goal
- Some packages end up at location G1, other packages end up at location G2
- All drivers and trucks end up in D