(define (problem cleaning-b10-g10-c10-r1)
	(:domain cleaning)
	(:objects
		book-1 book-2 book-3 book-4 book-5 book-6 book-7 book-8 book-9 book-10 - book
		garbage-1 garbage-2 garbage-3 garbage-4 garbage-5 garbage-6 garbage-7 garbage-8 garbage-9 garbage-10 - garbage
		clothes-1 clothes-2 clothes-3 clothes-4 clothes-5 clothes-6 clothes-7 clothes-8 clothes-9 clothes-10 - clothes
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
		)
	)
)
