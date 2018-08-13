(define (problem p01)
	
  (:domain hamburger-strips)

  (:objects 
  	lettuce-1 lettuce-2
  	buns-1 buns-2
  	meat-1 meat-2
  	plate-1 plate-2
  	robot-1
  	robot-loc buns-loc lettuce-loc meat-loc plate-loc
  )

  (:init 
  	; constant locations
  	(LOCATION buns-loc)
  	(LOCATION lettuce-loc)
  	(LOCATION meat-loc)
  	(LOCATION plate-loc)
  	(LOCATION robot-loc)
  	; types
  	(ROBOT robot-1)
  	(BUNS buns-1)
  	(BUNS buns-2)
  	(LETTUCE lettuce-1)
  	(LETTUCE lettuce-2)
  	(MEAT meat-1)
  	(MEAT meat-2)
  	(PLATE plate-1)
	(PLATE plate-2)
	; initial position of objects
	(at robot-1 robot-loc)
	(at buns-1 buns-loc)
	(at buns-2 buns-loc)
	(at lettuce-1 lettuce-loc)
	(at lettuce-2 lettuce-loc)
	(at meat-1 meat-loc)
	(at meat-2 meat-loc)
	(at plate-1 plate-loc)
	(at plate-2 plate-loc)

	; initial state
	(no-burger plate-1)
	(no-buns plate-1)
	(no-lettuce plate-1)
	(no-meat plate-1)

	(no-burger plate-2)
	(no-buns plate-2)
	(no-lettuce plate-2)
	(no-meat plate-2)

	(empty-hand robot-1)
  ) 

  (:goal
  	(and
  		(have-burger plate-1)
  		(have-burger plate-2)
  		)
  )
)
