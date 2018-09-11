(define (problem construction-t1-c48-w1)
	(:domain construction)
	(:objects
		worker-1 - worker
		truck-1 - truck
		wood-part-1 wood-part-2 wood-part-3 wood-part-4 wood-part-5 wood-part-6 wood-part-7 wood-part-8 wood-part-9 wood-part-10 wood-part-11 wood-part-12 wood-part-13 wood-part-14 wood-part-15 wood-part-16 wood-part-17 wood-part-18 wood-part-19 wood-part-20 wood-part-21 wood-part-22 wood-part-23 wood-part-24 wood-part-25 wood-part-26 wood-part-27 wood-part-28 wood-part-29 wood-part-30 wood-part-31 wood-part-32 wood-part-33 wood-part-34 wood-part-35 wood-part-36 wood-part-37 wood-part-38 wood-part-39 wood-part-40 wood-part-41 wood-part-42 wood-part-43 wood-part-44 wood-part-45 wood-part-46 wood-part-47 wood-part-48 - part
		glass-part-1 glass-part-2 glass-part-3 glass-part-4 glass-part-5 glass-part-6 glass-part-7 glass-part-8 glass-part-9 glass-part-10 glass-part-11 glass-part-12 glass-part-13 glass-part-14 glass-part-15 glass-part-16 glass-part-17 glass-part-18 glass-part-19 glass-part-20 glass-part-21 glass-part-22 glass-part-23 glass-part-24 glass-part-25 glass-part-26 glass-part-27 glass-part-28 glass-part-29 glass-part-30 glass-part-31 glass-part-32 glass-part-33 glass-part-34 glass-part-35 glass-part-36 glass-part-37 glass-part-38 glass-part-39 glass-part-40 glass-part-41 glass-part-42 glass-part-43 glass-part-44 glass-part-45 glass-part-46 glass-part-47 glass-part-48 - part
		clay-part-1 clay-part-2 clay-part-3 clay-part-4 clay-part-5 clay-part-6 clay-part-7 clay-part-8 clay-part-9 clay-part-10 clay-part-11 clay-part-12 clay-part-13 clay-part-14 clay-part-15 clay-part-16 clay-part-17 clay-part-18 clay-part-19 clay-part-20 clay-part-21 clay-part-22 clay-part-23 clay-part-24 clay-part-25 clay-part-26 clay-part-27 clay-part-28 clay-part-29 clay-part-30 clay-part-31 clay-part-32 clay-part-33 clay-part-34 clay-part-35 clay-part-36 clay-part-37 clay-part-38 clay-part-39 clay-part-40 clay-part-41 clay-part-42 clay-part-43 clay-part-44 clay-part-45 clay-part-46 clay-part-47 clay-part-48 - part
		composite-1 composite-2 composite-3 composite-4 composite-5 composite-6 composite-7 composite-8 composite-9 composite-10 composite-11 composite-12 composite-13 composite-14 composite-15 composite-16 composite-17 composite-18 composite-19 composite-20 composite-21 composite-22 composite-23 composite-24 composite-25 composite-26 composite-27 composite-28 composite-29 composite-30 composite-31 composite-32 composite-33 composite-34 composite-35 composite-36 composite-37 composite-38 composite-39 composite-40 composite-41 composite-42 composite-43 composite-44 composite-45 composite-46 composite-47 composite-48 - composite
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
		(WOOD wood-part-17)
		(WOOD wood-part-18)
		(WOOD wood-part-19)
		(WOOD wood-part-20)
		(WOOD wood-part-21)
		(WOOD wood-part-22)
		(WOOD wood-part-23)
		(WOOD wood-part-24)
		(WOOD wood-part-25)
		(WOOD wood-part-26)
		(WOOD wood-part-27)
		(WOOD wood-part-28)
		(WOOD wood-part-29)
		(WOOD wood-part-30)
		(WOOD wood-part-31)
		(WOOD wood-part-32)
		(WOOD wood-part-33)
		(WOOD wood-part-34)
		(WOOD wood-part-35)
		(WOOD wood-part-36)
		(WOOD wood-part-37)
		(WOOD wood-part-38)
		(WOOD wood-part-39)
		(WOOD wood-part-40)
		(WOOD wood-part-41)
		(WOOD wood-part-42)
		(WOOD wood-part-43)
		(WOOD wood-part-44)
		(WOOD wood-part-45)
		(WOOD wood-part-46)
		(WOOD wood-part-47)
		(WOOD wood-part-48)
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
		(GLASS glass-part-17)
		(GLASS glass-part-18)
		(GLASS glass-part-19)
		(GLASS glass-part-20)
		(GLASS glass-part-21)
		(GLASS glass-part-22)
		(GLASS glass-part-23)
		(GLASS glass-part-24)
		(GLASS glass-part-25)
		(GLASS glass-part-26)
		(GLASS glass-part-27)
		(GLASS glass-part-28)
		(GLASS glass-part-29)
		(GLASS glass-part-30)
		(GLASS glass-part-31)
		(GLASS glass-part-32)
		(GLASS glass-part-33)
		(GLASS glass-part-34)
		(GLASS glass-part-35)
		(GLASS glass-part-36)
		(GLASS glass-part-37)
		(GLASS glass-part-38)
		(GLASS glass-part-39)
		(GLASS glass-part-40)
		(GLASS glass-part-41)
		(GLASS glass-part-42)
		(GLASS glass-part-43)
		(GLASS glass-part-44)
		(GLASS glass-part-45)
		(GLASS glass-part-46)
		(GLASS glass-part-47)
		(GLASS glass-part-48)
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
		(CLAY clay-part-17)
		(CLAY clay-part-18)
		(CLAY clay-part-19)
		(CLAY clay-part-20)
		(CLAY clay-part-21)
		(CLAY clay-part-22)
		(CLAY clay-part-23)
		(CLAY clay-part-24)
		(CLAY clay-part-25)
		(CLAY clay-part-26)
		(CLAY clay-part-27)
		(CLAY clay-part-28)
		(CLAY clay-part-29)
		(CLAY clay-part-30)
		(CLAY clay-part-31)
		(CLAY clay-part-32)
		(CLAY clay-part-33)
		(CLAY clay-part-34)
		(CLAY clay-part-35)
		(CLAY clay-part-36)
		(CLAY clay-part-37)
		(CLAY clay-part-38)
		(CLAY clay-part-39)
		(CLAY clay-part-40)
		(CLAY clay-part-41)
		(CLAY clay-part-42)
		(CLAY clay-part-43)
		(CLAY clay-part-44)
		(CLAY clay-part-45)
		(CLAY clay-part-46)
		(CLAY clay-part-47)
		(CLAY clay-part-48)
		(at worker-1 construction-area)
		(at truck-1 construction-area)
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
		(at wood-part-17 wood-warehouse)
		(at wood-part-18 wood-warehouse)
		(at wood-part-19 wood-warehouse)
		(at wood-part-20 wood-warehouse)
		(at wood-part-21 wood-warehouse)
		(at wood-part-22 wood-warehouse)
		(at wood-part-23 wood-warehouse)
		(at wood-part-24 wood-warehouse)
		(at wood-part-25 wood-warehouse)
		(at wood-part-26 wood-warehouse)
		(at wood-part-27 wood-warehouse)
		(at wood-part-28 wood-warehouse)
		(at wood-part-29 wood-warehouse)
		(at wood-part-30 wood-warehouse)
		(at wood-part-31 wood-warehouse)
		(at wood-part-32 wood-warehouse)
		(at wood-part-33 wood-warehouse)
		(at wood-part-34 wood-warehouse)
		(at wood-part-35 wood-warehouse)
		(at wood-part-36 wood-warehouse)
		(at wood-part-37 wood-warehouse)
		(at wood-part-38 wood-warehouse)
		(at wood-part-39 wood-warehouse)
		(at wood-part-40 wood-warehouse)
		(at wood-part-41 wood-warehouse)
		(at wood-part-42 wood-warehouse)
		(at wood-part-43 wood-warehouse)
		(at wood-part-44 wood-warehouse)
		(at wood-part-45 wood-warehouse)
		(at wood-part-46 wood-warehouse)
		(at wood-part-47 wood-warehouse)
		(at wood-part-48 wood-warehouse)
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
		(at glass-part-17 glass-warehouse)
		(at glass-part-18 glass-warehouse)
		(at glass-part-19 glass-warehouse)
		(at glass-part-20 glass-warehouse)
		(at glass-part-21 glass-warehouse)
		(at glass-part-22 glass-warehouse)
		(at glass-part-23 glass-warehouse)
		(at glass-part-24 glass-warehouse)
		(at glass-part-25 glass-warehouse)
		(at glass-part-26 glass-warehouse)
		(at glass-part-27 glass-warehouse)
		(at glass-part-28 glass-warehouse)
		(at glass-part-29 glass-warehouse)
		(at glass-part-30 glass-warehouse)
		(at glass-part-31 glass-warehouse)
		(at glass-part-32 glass-warehouse)
		(at glass-part-33 glass-warehouse)
		(at glass-part-34 glass-warehouse)
		(at glass-part-35 glass-warehouse)
		(at glass-part-36 glass-warehouse)
		(at glass-part-37 glass-warehouse)
		(at glass-part-38 glass-warehouse)
		(at glass-part-39 glass-warehouse)
		(at glass-part-40 glass-warehouse)
		(at glass-part-41 glass-warehouse)
		(at glass-part-42 glass-warehouse)
		(at glass-part-43 glass-warehouse)
		(at glass-part-44 glass-warehouse)
		(at glass-part-45 glass-warehouse)
		(at glass-part-46 glass-warehouse)
		(at glass-part-47 glass-warehouse)
		(at glass-part-48 glass-warehouse)
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
		(at clay-part-17 clay-warehouse)
		(at clay-part-18 clay-warehouse)
		(at clay-part-19 clay-warehouse)
		(at clay-part-20 clay-warehouse)
		(at clay-part-21 clay-warehouse)
		(at clay-part-22 clay-warehouse)
		(at clay-part-23 clay-warehouse)
		(at clay-part-24 clay-warehouse)
		(at clay-part-25 clay-warehouse)
		(at clay-part-26 clay-warehouse)
		(at clay-part-27 clay-warehouse)
		(at clay-part-28 clay-warehouse)
		(at clay-part-29 clay-warehouse)
		(at clay-part-30 clay-warehouse)
		(at clay-part-31 clay-warehouse)
		(at clay-part-32 clay-warehouse)
		(at clay-part-33 clay-warehouse)
		(at clay-part-34 clay-warehouse)
		(at clay-part-35 clay-warehouse)
		(at clay-part-36 clay-warehouse)
		(at clay-part-37 clay-warehouse)
		(at clay-part-38 clay-warehouse)
		(at clay-part-39 clay-warehouse)
		(at clay-part-40 clay-warehouse)
		(at clay-part-41 clay-warehouse)
		(at clay-part-42 clay-warehouse)
		(at clay-part-43 clay-warehouse)
		(at clay-part-44 clay-warehouse)
		(at clay-part-45 clay-warehouse)
		(at clay-part-46 clay-warehouse)
		(at clay-part-47 clay-warehouse)
		(at clay-part-48 clay-warehouse)
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
		(at composite-17 construction-area)
		(at composite-18 construction-area)
		(at composite-19 construction-area)
		(at composite-20 construction-area)
		(at composite-21 construction-area)
		(at composite-22 construction-area)
		(at composite-23 construction-area)
		(at composite-24 construction-area)
		(at composite-25 construction-area)
		(at composite-26 construction-area)
		(at composite-27 construction-area)
		(at composite-28 construction-area)
		(at composite-29 construction-area)
		(at composite-30 construction-area)
		(at composite-31 construction-area)
		(at composite-32 construction-area)
		(at composite-33 construction-area)
		(at composite-34 construction-area)
		(at composite-35 construction-area)
		(at composite-36 construction-area)
		(at composite-37 construction-area)
		(at composite-38 construction-area)
		(at composite-39 construction-area)
		(at composite-40 construction-area)
		(at composite-41 construction-area)
		(at composite-42 construction-area)
		(at composite-43 construction-area)
		(at composite-44 construction-area)
		(at composite-45 construction-area)
		(at composite-46 construction-area)
		(at composite-47 construction-area)
		(at composite-48 construction-area)
		(no-driver truck-1)
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
		(no-assembled composite-17)
		(no-wood composite-17)
		(no-glass composite-17)
		(no-clay composite-17)
		(no-assembled composite-18)
		(no-wood composite-18)
		(no-glass composite-18)
		(no-clay composite-18)
		(no-assembled composite-19)
		(no-wood composite-19)
		(no-glass composite-19)
		(no-clay composite-19)
		(no-assembled composite-20)
		(no-wood composite-20)
		(no-glass composite-20)
		(no-clay composite-20)
		(no-assembled composite-21)
		(no-wood composite-21)
		(no-glass composite-21)
		(no-clay composite-21)
		(no-assembled composite-22)
		(no-wood composite-22)
		(no-glass composite-22)
		(no-clay composite-22)
		(no-assembled composite-23)
		(no-wood composite-23)
		(no-glass composite-23)
		(no-clay composite-23)
		(no-assembled composite-24)
		(no-wood composite-24)
		(no-glass composite-24)
		(no-clay composite-24)
		(no-assembled composite-25)
		(no-wood composite-25)
		(no-glass composite-25)
		(no-clay composite-25)
		(no-assembled composite-26)
		(no-wood composite-26)
		(no-glass composite-26)
		(no-clay composite-26)
		(no-assembled composite-27)
		(no-wood composite-27)
		(no-glass composite-27)
		(no-clay composite-27)
		(no-assembled composite-28)
		(no-wood composite-28)
		(no-glass composite-28)
		(no-clay composite-28)
		(no-assembled composite-29)
		(no-wood composite-29)
		(no-glass composite-29)
		(no-clay composite-29)
		(no-assembled composite-30)
		(no-wood composite-30)
		(no-glass composite-30)
		(no-clay composite-30)
		(no-assembled composite-31)
		(no-wood composite-31)
		(no-glass composite-31)
		(no-clay composite-31)
		(no-assembled composite-32)
		(no-wood composite-32)
		(no-glass composite-32)
		(no-clay composite-32)
		(no-assembled composite-33)
		(no-wood composite-33)
		(no-glass composite-33)
		(no-clay composite-33)
		(no-assembled composite-34)
		(no-wood composite-34)
		(no-glass composite-34)
		(no-clay composite-34)
		(no-assembled composite-35)
		(no-wood composite-35)
		(no-glass composite-35)
		(no-clay composite-35)
		(no-assembled composite-36)
		(no-wood composite-36)
		(no-glass composite-36)
		(no-clay composite-36)
		(no-assembled composite-37)
		(no-wood composite-37)
		(no-glass composite-37)
		(no-clay composite-37)
		(no-assembled composite-38)
		(no-wood composite-38)
		(no-glass composite-38)
		(no-clay composite-38)
		(no-assembled composite-39)
		(no-wood composite-39)
		(no-glass composite-39)
		(no-clay composite-39)
		(no-assembled composite-40)
		(no-wood composite-40)
		(no-glass composite-40)
		(no-clay composite-40)
		(no-assembled composite-41)
		(no-wood composite-41)
		(no-glass composite-41)
		(no-clay composite-41)
		(no-assembled composite-42)
		(no-wood composite-42)
		(no-glass composite-42)
		(no-clay composite-42)
		(no-assembled composite-43)
		(no-wood composite-43)
		(no-glass composite-43)
		(no-clay composite-43)
		(no-assembled composite-44)
		(no-wood composite-44)
		(no-glass composite-44)
		(no-clay composite-44)
		(no-assembled composite-45)
		(no-wood composite-45)
		(no-glass composite-45)
		(no-clay composite-45)
		(no-assembled composite-46)
		(no-wood composite-46)
		(no-glass composite-46)
		(no-clay composite-46)
		(no-assembled composite-47)
		(no-wood composite-47)
		(no-glass composite-47)
		(no-clay composite-47)
		(no-assembled composite-48)
		(no-wood composite-48)
		(no-glass composite-48)
		(no-clay composite-48)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
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
		(assembled composite-17)
		(assembled composite-18)
		(assembled composite-19)
		(assembled composite-20)
		(assembled composite-21)
		(assembled composite-22)
		(assembled composite-23)
		(assembled composite-24)
		(assembled composite-25)
		(assembled composite-26)
		(assembled composite-27)
		(assembled composite-28)
		(assembled composite-29)
		(assembled composite-30)
		(assembled composite-31)
		(assembled composite-32)
		(assembled composite-33)
		(assembled composite-34)
		(assembled composite-35)
		(assembled composite-36)
		(assembled composite-37)
		(assembled composite-38)
		(assembled composite-39)
		(assembled composite-40)
		(assembled composite-41)
		(assembled composite-42)
		(assembled composite-43)
		(assembled composite-44)
		(assembled composite-45)
		(assembled composite-46)
		(assembled composite-47)
		(assembled composite-48)
		)
	)
)
