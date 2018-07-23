(define (problem construction-simple-t1-p5-w1)
	(:domain construction-simple)
	(:objects
		worker-1 - worker
		truck-1 - truck
		part-1 part-2 part-3 part-4 part-5 - part
		capacity-0 capacity-1 - capacity-number
		warehouse construction-area - location
	)
	(:init
		(at worker-1 construction-area)
		(at truck-1 construction-area)
		(at part-1 warehouse)
		(at part-2 warehouse)
		(at part-3 warehouse)
		(at part-4 warehouse)
		(at part-5 warehouse)
		(no-driver truck-1)
		(no-assembled part-1)
		(no-assembled part-2)
		(no-assembled part-3)
		(no-assembled part-4)
		(no-assembled part-5)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
	)
	(:goal (and
		(at part-1 construction-area)
		(assembled part-1)
		(at part-2 construction-area)
		(assembled part-2)
		(at part-3 construction-area)
		(assembled part-3)
		(at part-4 construction-area)
		(assembled part-4)
		(at part-5 construction-area)
		(assembled part-5)
		)
	)
)