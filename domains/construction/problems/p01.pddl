(define (problem p01)
	
  (:domain construction)

  (:objects 
  	worker-1 worker-2 - worker
  	truck-1 truck-2 - truck
  	wood-part-1 wood-part-2 wood-part-3 - wood-part
  	glass-part-1 glass-part-2 glass-part-3 - glass-part
  	clay-part-1 clay-part-2 clay-part-3 - clay-part
  	composite-1 composite-2 composite-3 - composite
  	capacity-0 capacity-1 - capacity-number
  	wood-warehouse glass-warehouse clay-warehouse construction-area - location
  )

  (:init 
  	; workers, trucks, parts at warehouse
  	(at worker-1 construction-area)
  	(at worker-2 construction-area)
  	(at truck-1 construction-area)
  	(at truck-2 construction-area)
  	(no-driver truck-1)
  	(no-driver truck-2)
  	(at wood-part-1 wood-warehouse)
  	(at wood-part-2 wood-warehouse)
  	(at wood-part-3 wood-warehouse)
  	(at glass-part-1 glass-warehouse)
  	(at glass-part-2 glass-warehouse)
  	(at glass-part-3 glass-warehouse)
  	(at clay-part-1 clay-warehouse)
  	(at clay-part-2 clay-warehouse)
  	(at clay-part-3 clay-warehouse)
    (at composite-1 construction-area)
    (at composite-2 construction-area)
    (at composite-3 construction-area)

  	(no-assembled composite-1)
  	(no-assembled composite-2)
  	(no-assembled composite-3)
    (no-wood composite-1)
    (no-wood composite-2)
    (no-wood composite-3)
    (no-glass composite-1)
    (no-glass composite-2)
    (no-glass composite-3)
    (no-clay composite-1)
    (no-clay composite-2)
    (no-clay composite-3)

  	(capacity-predecessor capacity-0 capacity-1)
    (capacity truck-1 capacity-1)
    (capacity truck-2 capacity-1)
  ) 

  (:goal
  	(and
      (assembled composite-1)
      (assembled composite-2)
      ; (assembled composite-3)
  		)
  ))
