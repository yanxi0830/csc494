(define (problem construction-t3-c1-w2)
	(:domain construction)
	(:objects
		worker-1 worker-2 - worker
		truck-1 truck-2 truck-3 - truck
		wood-part-1 - part
		glass-part-1 - part
		clay-part-1 - part
		composite-1 - composite
		capacity-0 capacity-1 - capacity-number
		wood-warehouse glass-warehouse clay-warehouse construction-area - location
	)
	(:init
		(WOOD wood-part-1)
		(GLASS glass-part-1)
		(CLAY clay-part-1)
		(at worker-1 construction-area)
		(at worker-2 construction-area)
		(at truck-1 construction-area)
		(at truck-2 construction-area)
		(at truck-3 construction-area)
		(at wood-part-1 wood-warehouse)
		(at glass-part-1 glass-warehouse)
		(at clay-part-1 clay-warehouse)
		(at composite-1 construction-area)
		(no-driver truck-1)
		(no-driver truck-2)
		(no-driver truck-3)
		(no-assembled composite-1)
		(no-wood composite-1)
		(no-glass composite-1)
		(no-clay composite-1)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
		(capacity truck-2 capacity-1)
		(capacity truck-3 capacity-1)
	)
	(:goal (and
		(assembled composite-1)
		)
	)
)
