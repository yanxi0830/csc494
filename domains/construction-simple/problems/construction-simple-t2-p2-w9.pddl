(define (problem construction-simple-t2-p2-w9)
	(:domain construction-simple)
	(:objects
		worker-1 worker-2 worker-3 worker-4 worker-5 worker-6 worker-7 worker-8 worker-9 - worker
		truck-1 truck-2 - truck
		part-1 part-2 - part
		capacity-0 capacity-1 - capacity-number
		warehouse construction-area - location
	)
	(:init
		(at worker-1 construction-area)
		(at worker-2 construction-area)
		(at worker-3 construction-area)
		(at worker-4 construction-area)
		(at worker-5 construction-area)
		(at worker-6 construction-area)
		(at worker-7 construction-area)
		(at worker-8 construction-area)
		(at worker-9 construction-area)
		(at truck-1 construction-area)
		(at truck-2 construction-area)
		(at part-1 warehouse)
		(at part-2 warehouse)
		(no-driver truck-1)
		(no-driver truck-2)
		(no-assembled part-1)
		(no-assembled part-2)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
		(capacity truck-2 capacity-1)
	)
	(:goal (and
		(at part-1 construction-area)
		(assembled part-1)
		(at part-2 construction-area)
		(assembled part-2)
		)
	)
)
