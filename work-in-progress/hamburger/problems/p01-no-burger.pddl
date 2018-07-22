(define (problem p01)
	
  (:domain hamburger-no-burger)

  (:objects 
  	lettuce-1 lettuce-2 - lettuce
  	buns-1 buns-2 - buns
  	meat-1 meat-2 - meat
  	plate-1 plate-2 - plate
  )

  (:init 
  	(at lettuce-1 L1)
  	(at lettuce-2 L1)

  	(at buns-1 L2)
  	(at buns-2 L2)

  	(at meat-1 L3)
  	(at meat-2 L3)

  	(at plate-1 L4)
  	(at plate-2 L4)
    
  	(at R1 L5)
  	(empty-hand R1)
  ) 

  (:goal
  	(and
  		(have-lettuce plate-1)
      (have-meat plate-1)
      (have-buns plate-1)

  		(have-lettuce plate-2)
      (have-meat plate-2)
      (have-buns plate-2)
      )
  ))
