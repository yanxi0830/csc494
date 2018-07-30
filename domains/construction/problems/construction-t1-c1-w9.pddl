(define (problem construction-t1-c1-w9)
	(:domain construction)
	(:objects
		worker-1 worker-2 worker-3 worker-4 worker-5 worker-6 worker-7 worker-8 worker-9 - worker
		truck-1 - truck
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
		(at worker-3 construction-area)
		(at worker-4 construction-area)
		(at worker-5 construction-area)
		(at worker-6 construction-area)
		(at worker-7 construction-area)
		(at worker-8 construction-area)
		(at worker-9 construction-area)
		(at truck-1 construction-area)
		(at wood-part-1 wood-warehouse)
		(at glass-part-1 glass-warehouse)
		(at clay-part-1 clay-warehouse)
		(at composite-1 construction-area)
		(no-driver truck-1)
		(no-assembled composite-1)
		(no-wood composite-1)
		(no-glass composite-1)
		(no-clay composite-1)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
	)
	(:goal (and
		(assembled composite-1)
		)
	)
)
