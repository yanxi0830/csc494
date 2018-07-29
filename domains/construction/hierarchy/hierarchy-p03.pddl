(define (problem p03)
  
  (:domain construction-hierarchy)

  (:objects 
    worker-1 - worker
    truck-1 - truck
    wood-part-1 wood-part-2 - wood-part
    glass-part-1 glass-part-2 - glass-part
    clay-part-1 clay-part-2 - clay-part
    composite-1 composite-2 - composite
    capacity-0 capacity-1 - capacity-number
    wood-warehouse glass-warehouse clay-warehouse construction-area - location
  )

  (:init 
    ; workers, trucks at construction-area
    ; parts at warehouse
    (at worker-1 construction-area)
    (at truck-1 construction-area)
    (no-driver truck-1)
    (at wood-part-1 wood-warehouse)
    (at wood-part-2 wood-warehouse)
    (at glass-part-1 glass-warehouse)
    (at glass-part-2 glass-warehouse)
    (at clay-part-1 clay-warehouse)
    (at clay-part-2 clay-warehouse)
    (at composite-1 construction-area)
    (at composite-2 construction-area)

    (no-assembled composite-1)
    (no-wood composite-1)
    (no-glass composite-1)
    (no-clay composite-1)

    (no-assembled composite-2)
    (no-wood composite-2)
    (no-glass composite-2)
    (no-clay composite-2)

    (capacity-predecessor capacity-0 capacity-1)
    (capacity truck-1 capacity-1)
  ) 

  (:goal
    (and
      (assembled composite-1)
      (assembled composite-2)
      )
  ))
