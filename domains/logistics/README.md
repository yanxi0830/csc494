# Logistics

## Description


##### Classical Problem
- Transport packages within cities via trucks, between cities via airplanes
- Locations within a city are directly connected (truck can move between any two such locations)
- In each city, there is exactly one truck, each city has one location that serves as an airport

##### Generalization
- Indistinguishable drivers, trucks, and packages
- Fixed number of cities, locations within cities, number of airplaces

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