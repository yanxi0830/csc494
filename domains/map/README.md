# Map

## Description
See [Problem Diagram](https://github.com/yanxi0830/csc494/blob/master/domains/map/map.jpeg)

##### Initial States
4x4 grid with N robots at the (0, 0) corner, M GPS's at the (3, 3) corner

##### Actions
- move the robot along the cardinal directions
	- `mvE()`
	- `mvW()`
	- `mvN()`
	- `mvS()`
- `pick-up`: pick up a GPS
- `put-down`: put down the GPS

##### Goal
All GPS must visit all location
