# Cleaning

## Description

##### Initial States
A tower of blocks with N blue blocks above M red blocks. The bottom most, red block of the tower satisfies the predicate "base"

##### Actions
- `mv(b, c)`: place block b on block c (both b and c must be clear)
- `mvToTable(b)`: place block b on the table (b must be clear)

##### Goal
A striped tower of blocks alternating colors, starting with the "base" block at the bottom. 
