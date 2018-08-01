(define (problem p01)
	
  (:domain roundabout)

  (:objects 
  	vehicle-1 vehicle-2 vehicle-3 vehicle-4 vehicle-5 vehicle-6 vehicle-7 vehicle-8 - vehicle
  	R1 R2 R3 R4 R5 R6 - road
  	S1 S2 S3 - sector
  )

  (:init 
  	; define entering and exiting road
  	(is-enter-road R2)
  	(is-enter-road R4)
  	(is-enter-road R6)
  	(is-exit-road R1)
  	(is-exit-road R3)
  	(is-exit-road R5)

  	; define sector before/after road
  	(before S1 R3)
  	(before S1 R4)
  	(after S1 R2)
  	(after S1 R1)

  	(before S2 R5)
  	(before S2 R6)
  	(after S2 R4)
  	(after S2 R3)

  	(before S3 R1)
  	(before S3 R2)
  	(after S3 R6)
  	(after S3 R5)

  	; all sector are free initially
  	(free S1)
  	(free S2)
  	(free S3)

  	(next-sector S1 S2)
  	(next-sector S2 S3)
  	(next-sector S3 S1)

  	; vehicles at road
  	(at-road vehicle-1 R2)
  	(at-road vehicle-2 R2)
  	(at-road vehicle-3 R2)
  	(at-road vehicle-4 R2)
  	(at-road vehicle-5 R2)
  	(at-road vehicle-6 R2)
  	(at-road vehicle-7 R2)
  	(at-road vehicle-8 R2)
  ) 

  (:goal
  	(and
  		(at-road vehicle-1 R1)
	  	(at-road vehicle-2 R1)
	  	(at-road vehicle-3 R3)
	  	(at-road vehicle-4 R3)
	  	(at-road vehicle-5 R5)
	  	(at-road vehicle-6 R5)
	  	(at-road vehicle-7 R1)
	  	(at-road vehicle-8 R1)
  		)
  ))
