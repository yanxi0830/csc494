# Logistics

## Description

##### Classical Problem
- Transport packages within cities via trucks, between cities via airplanes
- Locations within a city are directly connected (truck can move between any two such locations)
- In each city, there is exactly one truck, each city has one location that serves as an airport

##### Generalization
- Indistinguishable packages
- Fixed number of cities, locations within cities, number of airports

##### Initial States
- 3 cities: city-a, city-b, city-c
- 3 locations in city-a: airport-a, house-a, warehouse-a
- 3 locations in city-b: airport-b, house-b, warehouse-b
- 3 locations in city-c: airport-c, house-c, warehouse-c
- packages in warehouse-a wants to get to house-b
- packages in warehouse-b wants to get to house-c
- packages in warehouse-c wants to get to house-a
- 3 trucks in warehouse-a, warehouse-b, warehouse-c
- 1 airplane in airport-a

##### Actions
- `load-truck`
- `load-airplane`
- `unload-truck`
- `unload-airplane`
- `drive-truck`
- `fly-airplane`

##### Goal
- packages in warehouse-a end up in house-b
- packages in warehouse-b end up in house-c
- packages in warehouse-c end up in house-a
