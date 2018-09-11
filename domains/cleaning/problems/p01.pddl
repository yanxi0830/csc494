(define (problem p01)

  (:domain cleaning)

  (:objects
  	organic-1 organic-2 organic-3 - organic
  	paper-1 paper-2 - paper
  	plastic-1 plastic-2 plastic-3 plastic-4 - plastic
  	robot-1 robot-2 - robot
  )

  (:init
  	(on-ground organic-1)
  	(on-ground organic-2)
  	(on-ground organic-3)

  	(on-ground paper-1)
  	(on-ground paper-2)

  	(on-ground plastic-1)
  	(on-ground plastic-2)
  	(on-ground plastic-3)
  	(on-ground plastic-4)

  	(empty-hand robot-1)
  	(empty-hand robot-2)

  )

  (:goal
  	(and
  		(in-compost-bin organic-1)
  		(in-compost-bin organic-2)
  		(in-compost-bin organic-3)

  		(in-plastic-bin plastic-1)
  		(in-plastic-bin plastic-2)
  		(in-plastic-bin plastic-3)
  		(in-plastic-bin plastic-4)

  		(in-paper-bin paper-1)
  		(in-paper-bin paper-2)
  		)
  ))
