# Hamburger

## Description

In this domain, there is a robot that manipulates random supply of buns, lettuce, and meat to make N hamburgers. 
The goal is to find a plan of the robot's actions that combines the supplies into hamburgers on N plates. 

#### Initial States
- supply of buns, lettuce, and meat
- lettuce are at L1, buns at L2, meat at L3, plates at L4
- all N plates are empty

#### Actions
- `go-to`: travel from one location to another
- `get-buns`: get buns at the location
- `get-lettuce`: get lettuce at location
- `get-meat`: get meat at location
- `put-<supply>-on-plate`: put supply (buns/lettuce/meat) onto plate
- `make-burger`: make the burger for the plate

#### Goal
- all N plates are filled with hamburgers consisting of buns+lettuce+meat
