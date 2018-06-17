# Recycling

PDDL domain and problem files

## Description

##### Initial States
N bins with objects of type paper and glass.

##### Actions
- `mvToNext()` : moves agent to the next non-empty bin
- `pickObj(o, b)` : picks an object from bin `b` (agent must be at bin `b`)
- `senseType(o)` : sense type of picked object `o` (paper, glass)
- `collectPaper(o)` : collect object `o` in paper container
- `collectGlass(o)` : collect object `o` in glass container

##### Goal
All bins must be empty; all paper objects must be in the paper container, and glass objects must be in the glass container

## PDDL

## Types
- paper
- glass
