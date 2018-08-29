(define (problem p01)
	
  (:domain cleaning)

  (:objects 
  	book-1 book-2 book-3 - book
  	garbage-1 garbage-2 - garbage
  	clothes-1 clothes-2 clothes-3 clothes-4 - clothes
  	robot-1 robot-2 - robot
  )

  (:init 
  	(on-ground book-1)
  	(on-ground book-2)
  	(on-ground book-3)

  	(on-ground garbage-1)
  	(on-ground garbage-2)

  	(on-ground clothes-1)
  	(on-ground clothes-2)
  	(on-ground clothes-3)
  	(on-ground clothes-4)

  	(empty-hand robot-1)
  	(empty-hand robot-2)
 
  ) 

  (:goal
  	(and
  		(in-shelf book-1)
  		(in-shelf book-2)
  		(in-shelf book-3)

  		(in-closet clothes-1)
  		(in-closet clothes-2)
  		(in-closet clothes-3)
  		(in-closet clothes-4)

  		(in-trash garbage-1)
  		(in-trash garbage-2)
  		)
  ))
