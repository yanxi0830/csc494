(define (problem cleaning-b40-g40-c40-r1)
	(:domain cleaning)
	(:objects
		book-1 book-2 book-3 book-4 book-5 book-6 book-7 book-8 book-9 book-10 book-11 book-12 book-13 book-14 book-15 book-16 book-17 book-18 book-19 book-20 book-21 book-22 book-23 book-24 book-25 book-26 book-27 book-28 book-29 book-30 book-31 book-32 book-33 book-34 book-35 book-36 book-37 book-38 book-39 book-40 - book
		garbage-1 garbage-2 garbage-3 garbage-4 garbage-5 garbage-6 garbage-7 garbage-8 garbage-9 garbage-10 garbage-11 garbage-12 garbage-13 garbage-14 garbage-15 garbage-16 garbage-17 garbage-18 garbage-19 garbage-20 garbage-21 garbage-22 garbage-23 garbage-24 garbage-25 garbage-26 garbage-27 garbage-28 garbage-29 garbage-30 garbage-31 garbage-32 garbage-33 garbage-34 garbage-35 garbage-36 garbage-37 garbage-38 garbage-39 garbage-40 - garbage
		clothes-1 clothes-2 clothes-3 clothes-4 clothes-5 clothes-6 clothes-7 clothes-8 clothes-9 clothes-10 clothes-11 clothes-12 clothes-13 clothes-14 clothes-15 clothes-16 clothes-17 clothes-18 clothes-19 clothes-20 clothes-21 clothes-22 clothes-23 clothes-24 clothes-25 clothes-26 clothes-27 clothes-28 clothes-29 clothes-30 clothes-31 clothes-32 clothes-33 clothes-34 clothes-35 clothes-36 clothes-37 clothes-38 clothes-39 clothes-40 - clothes
		robot-1 - robot
	)
	(:init
		(on-ground book-1)
		(on-ground book-2)
		(on-ground book-3)
		(on-ground book-4)
		(on-ground book-5)
		(on-ground book-6)
		(on-ground book-7)
		(on-ground book-8)
		(on-ground book-9)
		(on-ground book-10)
		(on-ground book-11)
		(on-ground book-12)
		(on-ground book-13)
		(on-ground book-14)
		(on-ground book-15)
		(on-ground book-16)
		(on-ground book-17)
		(on-ground book-18)
		(on-ground book-19)
		(on-ground book-20)
		(on-ground book-21)
		(on-ground book-22)
		(on-ground book-23)
		(on-ground book-24)
		(on-ground book-25)
		(on-ground book-26)
		(on-ground book-27)
		(on-ground book-28)
		(on-ground book-29)
		(on-ground book-30)
		(on-ground book-31)
		(on-ground book-32)
		(on-ground book-33)
		(on-ground book-34)
		(on-ground book-35)
		(on-ground book-36)
		(on-ground book-37)
		(on-ground book-38)
		(on-ground book-39)
		(on-ground book-40)
		(on-ground garbage-1)
		(on-ground garbage-2)
		(on-ground garbage-3)
		(on-ground garbage-4)
		(on-ground garbage-5)
		(on-ground garbage-6)
		(on-ground garbage-7)
		(on-ground garbage-8)
		(on-ground garbage-9)
		(on-ground garbage-10)
		(on-ground garbage-11)
		(on-ground garbage-12)
		(on-ground garbage-13)
		(on-ground garbage-14)
		(on-ground garbage-15)
		(on-ground garbage-16)
		(on-ground garbage-17)
		(on-ground garbage-18)
		(on-ground garbage-19)
		(on-ground garbage-20)
		(on-ground garbage-21)
		(on-ground garbage-22)
		(on-ground garbage-23)
		(on-ground garbage-24)
		(on-ground garbage-25)
		(on-ground garbage-26)
		(on-ground garbage-27)
		(on-ground garbage-28)
		(on-ground garbage-29)
		(on-ground garbage-30)
		(on-ground garbage-31)
		(on-ground garbage-32)
		(on-ground garbage-33)
		(on-ground garbage-34)
		(on-ground garbage-35)
		(on-ground garbage-36)
		(on-ground garbage-37)
		(on-ground garbage-38)
		(on-ground garbage-39)
		(on-ground garbage-40)
		(on-ground clothes-1)
		(on-ground clothes-2)
		(on-ground clothes-3)
		(on-ground clothes-4)
		(on-ground clothes-5)
		(on-ground clothes-6)
		(on-ground clothes-7)
		(on-ground clothes-8)
		(on-ground clothes-9)
		(on-ground clothes-10)
		(on-ground clothes-11)
		(on-ground clothes-12)
		(on-ground clothes-13)
		(on-ground clothes-14)
		(on-ground clothes-15)
		(on-ground clothes-16)
		(on-ground clothes-17)
		(on-ground clothes-18)
		(on-ground clothes-19)
		(on-ground clothes-20)
		(on-ground clothes-21)
		(on-ground clothes-22)
		(on-ground clothes-23)
		(on-ground clothes-24)
		(on-ground clothes-25)
		(on-ground clothes-26)
		(on-ground clothes-27)
		(on-ground clothes-28)
		(on-ground clothes-29)
		(on-ground clothes-30)
		(on-ground clothes-31)
		(on-ground clothes-32)
		(on-ground clothes-33)
		(on-ground clothes-34)
		(on-ground clothes-35)
		(on-ground clothes-36)
		(on-ground clothes-37)
		(on-ground clothes-38)
		(on-ground clothes-39)
		(on-ground clothes-40)
		(empty-hand robot-1)
	)
	(:goal (and
		(in-shelf book-1)
		(in-shelf book-2)
		(in-shelf book-3)
		(in-shelf book-4)
		(in-shelf book-5)
		(in-shelf book-6)
		(in-shelf book-7)
		(in-shelf book-8)
		(in-shelf book-9)
		(in-shelf book-10)
		(in-shelf book-11)
		(in-shelf book-12)
		(in-shelf book-13)
		(in-shelf book-14)
		(in-shelf book-15)
		(in-shelf book-16)
		(in-shelf book-17)
		(in-shelf book-18)
		(in-shelf book-19)
		(in-shelf book-20)
		(in-shelf book-21)
		(in-shelf book-22)
		(in-shelf book-23)
		(in-shelf book-24)
		(in-shelf book-25)
		(in-shelf book-26)
		(in-shelf book-27)
		(in-shelf book-28)
		(in-shelf book-29)
		(in-shelf book-30)
		(in-shelf book-31)
		(in-shelf book-32)
		(in-shelf book-33)
		(in-shelf book-34)
		(in-shelf book-35)
		(in-shelf book-36)
		(in-shelf book-37)
		(in-shelf book-38)
		(in-shelf book-39)
		(in-shelf book-40)
		(in-closet clothes-1)
		(in-closet clothes-2)
		(in-closet clothes-3)
		(in-closet clothes-4)
		(in-closet clothes-5)
		(in-closet clothes-6)
		(in-closet clothes-7)
		(in-closet clothes-8)
		(in-closet clothes-9)
		(in-closet clothes-10)
		(in-closet clothes-11)
		(in-closet clothes-12)
		(in-closet clothes-13)
		(in-closet clothes-14)
		(in-closet clothes-15)
		(in-closet clothes-16)
		(in-closet clothes-17)
		(in-closet clothes-18)
		(in-closet clothes-19)
		(in-closet clothes-20)
		(in-closet clothes-21)
		(in-closet clothes-22)
		(in-closet clothes-23)
		(in-closet clothes-24)
		(in-closet clothes-25)
		(in-closet clothes-26)
		(in-closet clothes-27)
		(in-closet clothes-28)
		(in-closet clothes-29)
		(in-closet clothes-30)
		(in-closet clothes-31)
		(in-closet clothes-32)
		(in-closet clothes-33)
		(in-closet clothes-34)
		(in-closet clothes-35)
		(in-closet clothes-36)
		(in-closet clothes-37)
		(in-closet clothes-38)
		(in-closet clothes-39)
		(in-closet clothes-40)
		(in-trash garbage-1)
		(in-trash garbage-2)
		(in-trash garbage-3)
		(in-trash garbage-4)
		(in-trash garbage-5)
		(in-trash garbage-6)
		(in-trash garbage-7)
		(in-trash garbage-8)
		(in-trash garbage-9)
		(in-trash garbage-10)
		(in-trash garbage-11)
		(in-trash garbage-12)
		(in-trash garbage-13)
		(in-trash garbage-14)
		(in-trash garbage-15)
		(in-trash garbage-16)
		(in-trash garbage-17)
		(in-trash garbage-18)
		(in-trash garbage-19)
		(in-trash garbage-20)
		(in-trash garbage-21)
		(in-trash garbage-22)
		(in-trash garbage-23)
		(in-trash garbage-24)
		(in-trash garbage-25)
		(in-trash garbage-26)
		(in-trash garbage-27)
		(in-trash garbage-28)
		(in-trash garbage-29)
		(in-trash garbage-30)
		(in-trash garbage-31)
		(in-trash garbage-32)
		(in-trash garbage-33)
		(in-trash garbage-34)
		(in-trash garbage-35)
		(in-trash garbage-36)
		(in-trash garbage-37)
		(in-trash garbage-38)
		(in-trash garbage-39)
		(in-trash garbage-40)
		)
	)
)
