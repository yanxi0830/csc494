(define (problem hamburger-strips-p40-r1)
	(:domain hamburger-strips)
	(:objects
		lettuce-1 lettuce-2 lettuce-3 lettuce-4 lettuce-5 lettuce-6 lettuce-7 lettuce-8 lettuce-9 lettuce-10 lettuce-11 lettuce-12 lettuce-13 lettuce-14 lettuce-15 lettuce-16 lettuce-17 lettuce-18 lettuce-19 lettuce-20 lettuce-21 lettuce-22 lettuce-23 lettuce-24 lettuce-25 lettuce-26 lettuce-27 lettuce-28 lettuce-29 lettuce-30 lettuce-31 lettuce-32 lettuce-33 lettuce-34 lettuce-35 lettuce-36 lettuce-37 lettuce-38 lettuce-39 lettuce-40
		buns-1 buns-2 buns-3 buns-4 buns-5 buns-6 buns-7 buns-8 buns-9 buns-10 buns-11 buns-12 buns-13 buns-14 buns-15 buns-16 buns-17 buns-18 buns-19 buns-20 buns-21 buns-22 buns-23 buns-24 buns-25 buns-26 buns-27 buns-28 buns-29 buns-30 buns-31 buns-32 buns-33 buns-34 buns-35 buns-36 buns-37 buns-38 buns-39 buns-40
		meat-1 meat-2 meat-3 meat-4 meat-5 meat-6 meat-7 meat-8 meat-9 meat-10 meat-11 meat-12 meat-13 meat-14 meat-15 meat-16 meat-17 meat-18 meat-19 meat-20 meat-21 meat-22 meat-23 meat-24 meat-25 meat-26 meat-27 meat-28 meat-29 meat-30 meat-31 meat-32 meat-33 meat-34 meat-35 meat-36 meat-37 meat-38 meat-39 meat-40
		plate-1 plate-2 plate-3 plate-4 plate-5 plate-6 plate-7 plate-8 plate-9 plate-10 plate-11 plate-12 plate-13 plate-14 plate-15 plate-16 plate-17 plate-18 plate-19 plate-20 plate-21 plate-22 plate-23 plate-24 plate-25 plate-26 plate-27 plate-28 plate-29 plate-30 plate-31 plate-32 plate-33 plate-34 plate-35 plate-36 plate-37 plate-38 plate-39 plate-40
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
		(BUNS buns-21)
		(BUNS buns-22)
		(BUNS buns-23)
		(BUNS buns-24)
		(BUNS buns-25)
		(BUNS buns-26)
		(BUNS buns-27)
		(BUNS buns-28)
		(BUNS buns-29)
		(BUNS buns-30)
		(BUNS buns-31)
		(BUNS buns-32)
		(BUNS buns-33)
		(BUNS buns-34)
		(BUNS buns-35)
		(BUNS buns-36)
		(BUNS buns-37)
		(BUNS buns-38)
		(BUNS buns-39)
		(BUNS buns-40)
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
		(LETTUCE lettuce-21)
		(LETTUCE lettuce-22)
		(LETTUCE lettuce-23)
		(LETTUCE lettuce-24)
		(LETTUCE lettuce-25)
		(LETTUCE lettuce-26)
		(LETTUCE lettuce-27)
		(LETTUCE lettuce-28)
		(LETTUCE lettuce-29)
		(LETTUCE lettuce-30)
		(LETTUCE lettuce-31)
		(LETTUCE lettuce-32)
		(LETTUCE lettuce-33)
		(LETTUCE lettuce-34)
		(LETTUCE lettuce-35)
		(LETTUCE lettuce-36)
		(LETTUCE lettuce-37)
		(LETTUCE lettuce-38)
		(LETTUCE lettuce-39)
		(LETTUCE lettuce-40)
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
		(MEAT meat-21)
		(MEAT meat-22)
		(MEAT meat-23)
		(MEAT meat-24)
		(MEAT meat-25)
		(MEAT meat-26)
		(MEAT meat-27)
		(MEAT meat-28)
		(MEAT meat-29)
		(MEAT meat-30)
		(MEAT meat-31)
		(MEAT meat-32)
		(MEAT meat-33)
		(MEAT meat-34)
		(MEAT meat-35)
		(MEAT meat-36)
		(MEAT meat-37)
		(MEAT meat-38)
		(MEAT meat-39)
		(MEAT meat-40)
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
		(PLATE plate-21)
		(PLATE plate-22)
		(PLATE plate-23)
		(PLATE plate-24)
		(PLATE plate-25)
		(PLATE plate-26)
		(PLATE plate-27)
		(PLATE plate-28)
		(PLATE plate-29)
		(PLATE plate-30)
		(PLATE plate-31)
		(PLATE plate-32)
		(PLATE plate-33)
		(PLATE plate-34)
		(PLATE plate-35)
		(PLATE plate-36)
		(PLATE plate-37)
		(PLATE plate-38)
		(PLATE plate-39)
		(PLATE plate-40)
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
		(at buns-21 buns-loc)
		(at buns-22 buns-loc)
		(at buns-23 buns-loc)
		(at buns-24 buns-loc)
		(at buns-25 buns-loc)
		(at buns-26 buns-loc)
		(at buns-27 buns-loc)
		(at buns-28 buns-loc)
		(at buns-29 buns-loc)
		(at buns-30 buns-loc)
		(at buns-31 buns-loc)
		(at buns-32 buns-loc)
		(at buns-33 buns-loc)
		(at buns-34 buns-loc)
		(at buns-35 buns-loc)
		(at buns-36 buns-loc)
		(at buns-37 buns-loc)
		(at buns-38 buns-loc)
		(at buns-39 buns-loc)
		(at buns-40 buns-loc)
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
		(at lettuce-21 lettuce-loc)
		(at lettuce-22 lettuce-loc)
		(at lettuce-23 lettuce-loc)
		(at lettuce-24 lettuce-loc)
		(at lettuce-25 lettuce-loc)
		(at lettuce-26 lettuce-loc)
		(at lettuce-27 lettuce-loc)
		(at lettuce-28 lettuce-loc)
		(at lettuce-29 lettuce-loc)
		(at lettuce-30 lettuce-loc)
		(at lettuce-31 lettuce-loc)
		(at lettuce-32 lettuce-loc)
		(at lettuce-33 lettuce-loc)
		(at lettuce-34 lettuce-loc)
		(at lettuce-35 lettuce-loc)
		(at lettuce-36 lettuce-loc)
		(at lettuce-37 lettuce-loc)
		(at lettuce-38 lettuce-loc)
		(at lettuce-39 lettuce-loc)
		(at lettuce-40 lettuce-loc)
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
		(at meat-21 meat-loc)
		(at meat-22 meat-loc)
		(at meat-23 meat-loc)
		(at meat-24 meat-loc)
		(at meat-25 meat-loc)
		(at meat-26 meat-loc)
		(at meat-27 meat-loc)
		(at meat-28 meat-loc)
		(at meat-29 meat-loc)
		(at meat-30 meat-loc)
		(at meat-31 meat-loc)
		(at meat-32 meat-loc)
		(at meat-33 meat-loc)
		(at meat-34 meat-loc)
		(at meat-35 meat-loc)
		(at meat-36 meat-loc)
		(at meat-37 meat-loc)
		(at meat-38 meat-loc)
		(at meat-39 meat-loc)
		(at meat-40 meat-loc)
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
		(at plate-21 plate-loc)
		(at plate-22 plate-loc)
		(at plate-23 plate-loc)
		(at plate-24 plate-loc)
		(at plate-25 plate-loc)
		(at plate-26 plate-loc)
		(at plate-27 plate-loc)
		(at plate-28 plate-loc)
		(at plate-29 plate-loc)
		(at plate-30 plate-loc)
		(at plate-31 plate-loc)
		(at plate-32 plate-loc)
		(at plate-33 plate-loc)
		(at plate-34 plate-loc)
		(at plate-35 plate-loc)
		(at plate-36 plate-loc)
		(at plate-37 plate-loc)
		(at plate-38 plate-loc)
		(at plate-39 plate-loc)
		(at plate-40 plate-loc)
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
		(no-burger plate-21)
		(no-buns plate-21)
		(no-lettuce plate-21)
		(no-meat plate-21)
		(no-burger plate-22)
		(no-buns plate-22)
		(no-lettuce plate-22)
		(no-meat plate-22)
		(no-burger plate-23)
		(no-buns plate-23)
		(no-lettuce plate-23)
		(no-meat plate-23)
		(no-burger plate-24)
		(no-buns plate-24)
		(no-lettuce plate-24)
		(no-meat plate-24)
		(no-burger plate-25)
		(no-buns plate-25)
		(no-lettuce plate-25)
		(no-meat plate-25)
		(no-burger plate-26)
		(no-buns plate-26)
		(no-lettuce plate-26)
		(no-meat plate-26)
		(no-burger plate-27)
		(no-buns plate-27)
		(no-lettuce plate-27)
		(no-meat plate-27)
		(no-burger plate-28)
		(no-buns plate-28)
		(no-lettuce plate-28)
		(no-meat plate-28)
		(no-burger plate-29)
		(no-buns plate-29)
		(no-lettuce plate-29)
		(no-meat plate-29)
		(no-burger plate-30)
		(no-buns plate-30)
		(no-lettuce plate-30)
		(no-meat plate-30)
		(no-burger plate-31)
		(no-buns plate-31)
		(no-lettuce plate-31)
		(no-meat plate-31)
		(no-burger plate-32)
		(no-buns plate-32)
		(no-lettuce plate-32)
		(no-meat plate-32)
		(no-burger plate-33)
		(no-buns plate-33)
		(no-lettuce plate-33)
		(no-meat plate-33)
		(no-burger plate-34)
		(no-buns plate-34)
		(no-lettuce plate-34)
		(no-meat plate-34)
		(no-burger plate-35)
		(no-buns plate-35)
		(no-lettuce plate-35)
		(no-meat plate-35)
		(no-burger plate-36)
		(no-buns plate-36)
		(no-lettuce plate-36)
		(no-meat plate-36)
		(no-burger plate-37)
		(no-buns plate-37)
		(no-lettuce plate-37)
		(no-meat plate-37)
		(no-burger plate-38)
		(no-buns plate-38)
		(no-lettuce plate-38)
		(no-meat plate-38)
		(no-burger plate-39)
		(no-buns plate-39)
		(no-lettuce plate-39)
		(no-meat plate-39)
		(no-burger plate-40)
		(no-buns plate-40)
		(no-lettuce plate-40)
		(no-meat plate-40)
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
		(have-burger plate-21)
		(have-burger plate-22)
		(have-burger plate-23)
		(have-burger plate-24)
		(have-burger plate-25)
		(have-burger plate-26)
		(have-burger plate-27)
		(have-burger plate-28)
		(have-burger plate-29)
		(have-burger plate-30)
		(have-burger plate-31)
		(have-burger plate-32)
		(have-burger plate-33)
		(have-burger plate-34)
		(have-burger plate-35)
		(have-burger plate-36)
		(have-burger plate-37)
		(have-burger plate-38)
		(have-burger plate-39)
		(have-burger plate-40)
		)
	)
)
