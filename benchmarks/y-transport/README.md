# Y-Transport

PDDL domain and problem files

## Description

##### Initial States
A Y-shaped transport graph with locations `L1, L2, L3` at the end points and D at the center. $N$ monitors are present at `L1` and $M$ servers at `L2`. Trucks `T1` and `T2` of capacities 1 and 2 are initially at `L1` and `L2` respectively.

##### Actions
- `loadTi(o)` : load object `o` onto `Ti` (`o` and `Ti` musst be at the same location)
- `mv(Ti, Li)` : move truck `Ti` to `Li` (possible only along the edges of the Y-shaped transport graph)
- `unloadTi(o)` : unload object `o` from truck Ti. At L3, objects can be unloaded only in pairs consisting of a monitor and a server

##### Goal
Deliver all objects at `L3`. This is possible only if $N=M$.
