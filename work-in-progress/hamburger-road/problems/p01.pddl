(define (problem p01)
	
  (:domain hamburger-road)

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
  	(road L1 L2)
  	(road L2 L1)
  	(road L1 L3)
  	(road L3 L1)
  	(road L1 L4)
  	(road L4 L1)
  	(road L1 L5)
  	(road L5 L1)
  	(road L2 L3)
  	(road L3 L2)
  	(road L2 L4)
  	(road L4 L2)
  	(road L2 L5)
  	(road L5 L2)
  	(road L3 L4)
  	(road L4 L3)
  	(road L3 L5)
  	(road L5 L3)
  	(road L4 L5)
  	(road L5 L4)
  ) 

  (:goal
  	(and
  		(have-burger plate-1)
  		(have-burger plate-2))
  ))
