(define (problem construction-t3-c16-w4)
	(:domain construction)
	(:objects
		worker-1 worker-2 worker-3 worker-4 - worker
		truck-1 truck-2 truck-3 - truck
		wood-part-1 wood-part-2 wood-part-3 wood-part-4 wood-part-5 wood-part-6 wood-part-7 wood-part-8 wood-part-9 wood-part-10 wood-part-11 wood-part-12 wood-part-13 wood-part-14 wood-part-15 wood-part-16 - part
		glass-part-1 glass-part-2 glass-part-3 glass-part-4 glass-part-5 glass-part-6 glass-part-7 glass-part-8 glass-part-9 glass-part-10 glass-part-11 glass-part-12 glass-part-13 glass-part-14 glass-part-15 glass-part-16 - part
		clay-part-1 clay-part-2 clay-part-3 clay-part-4 clay-part-5 clay-part-6 clay-part-7 clay-part-8 clay-part-9 clay-part-10 clay-part-11 clay-part-12 clay-part-13 clay-part-14 clay-part-15 clay-part-16 - part
		composite-1 composite-2 composite-3 composite-4 composite-5 composite-6 composite-7 composite-8 composite-9 composite-10 composite-11 composite-12 composite-13 composite-14 composite-15 composite-16 - composite
		capacity-0 capacity-1 - capacity-number
		wood-warehouse glass-warehouse clay-warehouse construction-area - location
	)
	(:init
		(WOOD wood-part-1)
		(WOOD wood-part-2)
		(WOOD wood-part-3)
		(WOOD wood-part-4)
		(WOOD wood-part-5)
		(WOOD wood-part-6)
		(WOOD wood-part-7)
		(WOOD wood-part-8)
		(WOOD wood-part-9)
		(WOOD wood-part-10)
		(WOOD wood-part-11)
		(WOOD wood-part-12)
		(WOOD wood-part-13)
		(WOOD wood-part-14)
		(WOOD wood-part-15)
		(WOOD wood-part-16)
		(GLASS glass-part-1)
		(GLASS glass-part-2)
		(GLASS glass-part-3)
		(GLASS glass-part-4)
		(GLASS glass-part-5)
		(GLASS glass-part-6)
		(GLASS glass-part-7)
		(GLASS glass-part-8)
		(GLASS glass-part-9)
		(GLASS glass-part-10)
		(GLASS glass-part-11)
		(GLASS glass-part-12)
		(GLASS glass-part-13)
		(GLASS glass-part-14)
		(GLASS glass-part-15)
		(GLASS glass-part-16)
		(CLAY clay-part-1)
		(CLAY clay-part-2)
		(CLAY clay-part-3)
		(CLAY clay-part-4)
		(CLAY clay-part-5)
		(CLAY clay-part-6)
		(CLAY clay-part-7)
		(CLAY clay-part-8)
		(CLAY clay-part-9)
		(CLAY clay-part-10)
		(CLAY clay-part-11)
		(CLAY clay-part-12)
		(CLAY clay-part-13)
		(CLAY clay-part-14)
		(CLAY clay-part-15)
		(CLAY clay-part-16)
		(at worker-1 construction-area)
		(at worker-2 construction-area)
		(at worker-3 construction-area)
		(at worker-4 construction-area)
		(at truck-1 construction-area)
		(at truck-2 construction-area)
		(at truck-3 construction-area)
		(at wood-part-1 wood-warehouse)
		(at wood-part-2 wood-warehouse)
		(at wood-part-3 wood-warehouse)
		(at wood-part-4 wood-warehouse)
		(at wood-part-5 wood-warehouse)
		(at wood-part-6 wood-warehouse)
		(at wood-part-7 wood-warehouse)
		(at wood-part-8 wood-warehouse)
		(at wood-part-9 wood-warehouse)
		(at wood-part-10 wood-warehouse)
		(at wood-part-11 wood-warehouse)
		(at wood-part-12 wood-warehouse)
		(at wood-part-13 wood-warehouse)
		(at wood-part-14 wood-warehouse)
		(at wood-part-15 wood-warehouse)
		(at wood-part-16 wood-warehouse)
		(at glass-part-1 glass-warehouse)
		(at glass-part-2 glass-warehouse)
		(at glass-part-3 glass-warehouse)
		(at glass-part-4 glass-warehouse)
		(at glass-part-5 glass-warehouse)
		(at glass-part-6 glass-warehouse)
		(at glass-part-7 glass-warehouse)
		(at glass-part-8 glass-warehouse)
		(at glass-part-9 glass-warehouse)
		(at glass-part-10 glass-warehouse)
		(at glass-part-11 glass-warehouse)
		(at glass-part-12 glass-warehouse)
		(at glass-part-13 glass-warehouse)
		(at glass-part-14 glass-warehouse)
		(at glass-part-15 glass-warehouse)
		(at glass-part-16 glass-warehouse)
		(at clay-part-1 clay-warehouse)
		(at clay-part-2 clay-warehouse)
		(at clay-part-3 clay-warehouse)
		(at clay-part-4 clay-warehouse)
		(at clay-part-5 clay-warehouse)
		(at clay-part-6 clay-warehouse)
		(at clay-part-7 clay-warehouse)
		(at clay-part-8 clay-warehouse)
		(at clay-part-9 clay-warehouse)
		(at clay-part-10 clay-warehouse)
		(at clay-part-11 clay-warehouse)
		(at clay-part-12 clay-warehouse)
		(at clay-part-13 clay-warehouse)
		(at clay-part-14 clay-warehouse)
		(at clay-part-15 clay-warehouse)
		(at clay-part-16 clay-warehouse)
		(at composite-1 construction-area)
		(at composite-2 construction-area)
		(at composite-3 construction-area)
		(at composite-4 construction-area)
		(at composite-5 construction-area)
		(at composite-6 construction-area)
		(at composite-7 construction-area)
		(at composite-8 construction-area)
		(at composite-9 construction-area)
		(at composite-10 construction-area)
		(at composite-11 construction-area)
		(at composite-12 construction-area)
		(at composite-13 construction-area)
		(at composite-14 construction-area)
		(at composite-15 construction-area)
		(at composite-16 construction-area)
		(no-driver truck-1)
		(no-driver truck-2)
		(no-driver truck-3)
		(no-assembled composite-1)
		(no-wood composite-1)
		(no-glass composite-1)
		(no-clay composite-1)
		(no-assembled composite-2)
		(no-wood composite-2)
		(no-glass composite-2)
		(no-clay composite-2)
		(no-assembled composite-3)
		(no-wood composite-3)
		(no-glass composite-3)
		(no-clay composite-3)
		(no-assembled composite-4)
		(no-wood composite-4)
		(no-glass composite-4)
		(no-clay composite-4)
		(no-assembled composite-5)
		(no-wood composite-5)
		(no-glass composite-5)
		(no-clay composite-5)
		(no-assembled composite-6)
		(no-wood composite-6)
		(no-glass composite-6)
		(no-clay composite-6)
		(no-assembled composite-7)
		(no-wood composite-7)
		(no-glass composite-7)
		(no-clay composite-7)
		(no-assembled composite-8)
		(no-wood composite-8)
		(no-glass composite-8)
		(no-clay composite-8)
		(no-assembled composite-9)
		(no-wood composite-9)
		(no-glass composite-9)
		(no-clay composite-9)
		(no-assembled composite-10)
		(no-wood composite-10)
		(no-glass composite-10)
		(no-clay composite-10)
		(no-assembled composite-11)
		(no-wood composite-11)
		(no-glass composite-11)
		(no-clay composite-11)
		(no-assembled composite-12)
		(no-wood composite-12)
		(no-glass composite-12)
		(no-clay composite-12)
		(no-assembled composite-13)
		(no-wood composite-13)
		(no-glass composite-13)
		(no-clay composite-13)
		(no-assembled composite-14)
		(no-wood composite-14)
		(no-glass composite-14)
		(no-clay composite-14)
		(no-assembled composite-15)
		(no-wood composite-15)
		(no-glass composite-15)
		(no-clay composite-15)
		(no-assembled composite-16)
		(no-wood composite-16)
		(no-glass composite-16)
		(no-clay composite-16)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
		(capacity truck-2 capacity-1)
		(capacity truck-3 capacity-1)
	)
	(:goal (and
		(assembled composite-1)
		(assembled composite-2)
		(assembled composite-3)
		(assembled composite-4)
		(assembled composite-5)
		(assembled composite-6)
		(assembled composite-7)
		(assembled composite-8)
		(assembled composite-9)
		(assembled composite-10)
		(assembled composite-11)
		(assembled composite-12)
		(assembled composite-13)
		(assembled composite-14)
		(assembled composite-15)
		(assembled composite-16)
		)
	)
)
