(define (problem construction-simple-t1-p2-w4)
	(:domain construction-simple)
	(:objects
		worker-1 worker-2 worker-3 worker-4 - worker
		truck-1 - truck
		part-1 part-2 - part
		capacity-0 capacity-1 - capacity-number
		warehouse construction-area - location
	)
	(:init
		(at worker-1 construction-area)
		(at worker-2 construction-area)
		(at worker-3 construction-area)
		(at worker-4 construction-area)
		(at truck-1 construction-area)
		(at part-1 warehouse)
		(at part-2 warehouse)
		(no-driver truck-1)
		(no-assembled part-1)
		(no-assembled part-2)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
	)
	(:goal (and
		(at part-1 construction-area)
		(assembled part-1)
		(at part-2 construction-area)
		(assembled part-2)
		)
	)
)
