(define (problem hamburger-strips-p20-r1)
	(:domain hamburger-strips)
	(:objects
		lettuce-1 lettuce-2 lettuce-3 lettuce-4 lettuce-5 lettuce-6 lettuce-7 lettuce-8 lettuce-9 lettuce-10 lettuce-11 lettuce-12 lettuce-13 lettuce-14 lettuce-15 lettuce-16 lettuce-17 lettuce-18 lettuce-19 lettuce-20
		buns-1 buns-2 buns-3 buns-4 buns-5 buns-6 buns-7 buns-8 buns-9 buns-10 buns-11 buns-12 buns-13 buns-14 buns-15 buns-16 buns-17 buns-18 buns-19 buns-20
		meat-1 meat-2 meat-3 meat-4 meat-5 meat-6 meat-7 meat-8 meat-9 meat-10 meat-11 meat-12 meat-13 meat-14 meat-15 meat-16 meat-17 meat-18 meat-19 meat-20
		plate-1 plate-2 plate-3 plate-4 plate-5 plate-6 plate-7 plate-8 plate-9 plate-10 plate-11 plate-12 plate-13 plate-14 plate-15 plate-16 plate-17 plate-18 plate-19 plate-20
		robot-1
		robot-loc buns-loc lettuce-loc meat-loc plate-loc
	)
	(:init
		(LOCATION robot-loc)
		(LOCATION buns-loc)
		(LOCATION lettuce-loc)
		(LOCATION meat-loc)
		(LOCATION plate-loc)
		(ROBOT robot-1)
		(BUNS buns-1)
		(BUNS buns-2)
		(BUNS buns-3)
		(BUNS buns-4)
		(BUNS buns-5)
		(BUNS buns-6)
		(BUNS buns-7)
		(BUNS buns-8)
		(BUNS buns-9)
		(BUNS buns-10)
		(BUNS buns-11)
		(BUNS buns-12)
		(BUNS buns-13)
		(BUNS buns-14)
		(BUNS buns-15)
		(BUNS buns-16)
		(BUNS buns-17)
		(BUNS buns-18)
		(BUNS buns-19)
		(BUNS buns-20)
		(LETTUCE lettuce-1)
		(LETTUCE lettuce-2)
		(LETTUCE lettuce-3)
		(LETTUCE lettuce-4)
		(LETTUCE lettuce-5)
		(LETTUCE lettuce-6)
		(LETTUCE lettuce-7)
		(LETTUCE lettuce-8)
		(LETTUCE lettuce-9)
		(LETTUCE lettuce-10)
		(LETTUCE lettuce-11)
		(LETTUCE lettuce-12)
		(LETTUCE lettuce-13)
		(LETTUCE lettuce-14)
		(LETTUCE lettuce-15)
		(LETTUCE lettuce-16)
		(LETTUCE lettuce-17)
		(LETTUCE lettuce-18)
		(LETTUCE lettuce-19)
		(LETTUCE lettuce-20)
		(MEAT meat-1)
		(MEAT meat-2)
		(MEAT meat-3)
		(MEAT meat-4)
		(MEAT meat-5)
		(MEAT meat-6)
		(MEAT meat-7)
		(MEAT meat-8)
		(MEAT meat-9)
		(MEAT meat-10)
		(MEAT meat-11)
		(MEAT meat-12)
		(MEAT meat-13)
		(MEAT meat-14)
		(MEAT meat-15)
		(MEAT meat-16)
		(MEAT meat-17)
		(MEAT meat-18)
		(MEAT meat-19)
		(MEAT meat-20)
		(PLATE plate-1)
		(PLATE plate-2)
		(PLATE plate-3)
		(PLATE plate-4)
		(PLATE plate-5)
		(PLATE plate-6)
		(PLATE plate-7)
		(PLATE plate-8)
		(PLATE plate-9)
		(PLATE plate-10)
		(PLATE plate-11)
		(PLATE plate-12)
		(PLATE plate-13)
		(PLATE plate-14)
		(PLATE plate-15)
		(PLATE plate-16)
		(PLATE plate-17)
		(PLATE plate-18)
		(PLATE plate-19)
		(PLATE plate-20)
		(at robot-1 robot-loc)
		(at buns-1 buns-loc)
		(at buns-2 buns-loc)
		(at buns-3 buns-loc)
		(at buns-4 buns-loc)
		(at buns-5 buns-loc)
		(at buns-6 buns-loc)
		(at buns-7 buns-loc)
		(at buns-8 buns-loc)
		(at buns-9 buns-loc)
		(at buns-10 buns-loc)
		(at buns-11 buns-loc)
		(at buns-12 buns-loc)
		(at buns-13 buns-loc)
		(at buns-14 buns-loc)
		(at buns-15 buns-loc)
		(at buns-16 buns-loc)
		(at buns-17 buns-loc)
		(at buns-18 buns-loc)
		(at buns-19 buns-loc)
		(at buns-20 buns-loc)
		(at lettuce-1 lettuce-loc)
		(at lettuce-2 lettuce-loc)
		(at lettuce-3 lettuce-loc)
		(at lettuce-4 lettuce-loc)
		(at lettuce-5 lettuce-loc)
		(at lettuce-6 lettuce-loc)
		(at lettuce-7 lettuce-loc)
		(at lettuce-8 lettuce-loc)
		(at lettuce-9 lettuce-loc)
		(at lettuce-10 lettuce-loc)
		(at lettuce-11 lettuce-loc)
		(at lettuce-12 lettuce-loc)
		(at lettuce-13 lettuce-loc)
		(at lettuce-14 lettuce-loc)
		(at lettuce-15 lettuce-loc)
		(at lettuce-16 lettuce-loc)
		(at lettuce-17 lettuce-loc)
		(at lettuce-18 lettuce-loc)
		(at lettuce-19 lettuce-loc)
		(at lettuce-20 lettuce-loc)
		(at meat-1 meat-loc)
		(at meat-2 meat-loc)
		(at meat-3 meat-loc)
		(at meat-4 meat-loc)
		(at meat-5 meat-loc)
		(at meat-6 meat-loc)
		(at meat-7 meat-loc)
		(at meat-8 meat-loc)
		(at meat-9 meat-loc)
		(at meat-10 meat-loc)
		(at meat-11 meat-loc)
		(at meat-12 meat-loc)
		(at meat-13 meat-loc)
		(at meat-14 meat-loc)
		(at meat-15 meat-loc)
		(at meat-16 meat-loc)
		(at meat-17 meat-loc)
		(at meat-18 meat-loc)
		(at meat-19 meat-loc)
		(at meat-20 meat-loc)
		(at plate-1 plate-loc)
		(at plate-2 plate-loc)
		(at plate-3 plate-loc)
		(at plate-4 plate-loc)
		(at plate-5 plate-loc)
		(at plate-6 plate-loc)
		(at plate-7 plate-loc)
		(at plate-8 plate-loc)
		(at plate-9 plate-loc)
		(at plate-10 plate-loc)
		(at plate-11 plate-loc)
		(at plate-12 plate-loc)
		(at plate-13 plate-loc)
		(at plate-14 plate-loc)
		(at plate-15 plate-loc)
		(at plate-16 plate-loc)
		(at plate-17 plate-loc)
		(at plate-18 plate-loc)
		(at plate-19 plate-loc)
		(at plate-20 plate-loc)
		(no-burger plate-1)
		(no-buns plate-1)
		(no-lettuce plate-1)
		(no-meat plate-1)
		(no-burger plate-2)
		(no-buns plate-2)
		(no-lettuce plate-2)
		(no-meat plate-2)
		(no-burger plate-3)
		(no-buns plate-3)
		(no-lettuce plate-3)
		(no-meat plate-3)
		(no-burger plate-4)
		(no-buns plate-4)
		(no-lettuce plate-4)
		(no-meat plate-4)
		(no-burger plate-5)
		(no-buns plate-5)
		(no-lettuce plate-5)
		(no-meat plate-5)
		(no-burger plate-6)
		(no-buns plate-6)
		(no-lettuce plate-6)
		(no-meat plate-6)
		(no-burger plate-7)
		(no-buns plate-7)
		(no-lettuce plate-7)
		(no-meat plate-7)
		(no-burger plate-8)
		(no-buns plate-8)
		(no-lettuce plate-8)
		(no-meat plate-8)
		(no-burger plate-9)
		(no-buns plate-9)
		(no-lettuce plate-9)
		(no-meat plate-9)
		(no-burger plate-10)
		(no-buns plate-10)
		(no-lettuce plate-10)
		(no-meat plate-10)
		(no-burger plate-11)
		(no-buns plate-11)
		(no-lettuce plate-11)
		(no-meat plate-11)
		(no-burger plate-12)
		(no-buns plate-12)
		(no-lettuce plate-12)
		(no-meat plate-12)
		(no-burger plate-13)
		(no-buns plate-13)
		(no-lettuce plate-13)
		(no-meat plate-13)
		(no-burger plate-14)
		(no-buns plate-14)
		(no-lettuce plate-14)
		(no-meat plate-14)
		(no-burger plate-15)
		(no-buns plate-15)
		(no-lettuce plate-15)
		(no-meat plate-15)
		(no-burger plate-16)
		(no-buns plate-16)
		(no-lettuce plate-16)
		(no-meat plate-16)
		(no-burger plate-17)
		(no-buns plate-17)
		(no-lettuce plate-17)
		(no-meat plate-17)
		(no-burger plate-18)
		(no-buns plate-18)
		(no-lettuce plate-18)
		(no-meat plate-18)
		(no-burger plate-19)
		(no-buns plate-19)
		(no-lettuce plate-19)
		(no-meat plate-19)
		(no-burger plate-20)
		(no-buns plate-20)
		(no-lettuce plate-20)
		(no-meat plate-20)
		(empty-hand robot-1)
	)
	(:goal (and
		(have-burger plate-1)
		(have-burger plate-2)
		(have-burger plate-3)
		(have-burger plate-4)
		(have-burger plate-5)
		(have-burger plate-6)
		(have-burger plate-7)
		(have-burger plate-8)
		(have-burger plate-9)
		(have-burger plate-10)
		(have-burger plate-11)
		(have-burger plate-12)
		(have-burger plate-13)
		(have-burger plate-14)
		(have-burger plate-15)
		(have-burger plate-16)
		(have-burger plate-17)
		(have-burger plate-18)
		(have-burger plate-19)
		(have-burger plate-20)
		)
	)
)
