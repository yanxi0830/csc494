# Roundabout

> Adapted from [ICKEPS 2016 Scenarios](https://helios.hud.ac.uk/scommv/ICKEPS/Scenarios.pdf)
> No speed of vehicle, no length of road section
> Goal is to have vehicles at goal destination

## Description

- Navigate any number of vehicles through the 3 sector (6 road sections) network. 

- A vehicle cannot enter a roundabout if the sector before the road it is entering the roundabout from and the sector after the road are not free

- [optional] capacity on road sections (not now...)

#### Initial States
- vehicles at R2, R4, R6 (road sections for entering roundabout)

#### Actions
- `enter`: vehicle enter from road into sector after it (i.e. sector is after the road)
- `drive`: vehicle already in roundabout, drive the sector it's at to the next sector
- `exit`: vehicle exit from sector in roundabout to the road after the sector (i.e. sector is before the road)

#### Goal
- vehicles at R2 want to get to R1, R3, R5
- vehicles at R4 want to get to R1, R3, R5
- vehicles at R6 want to get to R1, R3, R5