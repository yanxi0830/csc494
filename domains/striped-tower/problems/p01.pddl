(define (problem p01)

  (:domain striped-tower)

  (:objects
  	r1 r2 r3 r4 r5 - block
		b1 b2 b3 b4 b5 - block
  )

  (:init
  	(on-table r1)
		(RED r1)
		(RED r2)
		(RED r3)
		(RED r4)
		(RED r5)
		(BLUE b1)
		(BLUE b2)
		(BLUE b3)
		(BLUE b4)
		(BLUE b5)
		(on r2 r1)
		(on r3 r2)
		(on r4 r3)
		(on r5 r4)
		(on b1 r5)
		(on b2 b1)
		(on b3 b2)
		(on b4 b3)
		(on b5 b4)
		(clear b5)
  )

  (:goal
  	(and
  		(under-blue r1)
			(on-blue r2)
			(on-blue r3)
			(on-blue r4)
			(on-blue r5)
			(on-red b1)
			(on-red b2)
			(on-red b3)
			(on-red b4)
			(on-red b5)
  		)
  ))
