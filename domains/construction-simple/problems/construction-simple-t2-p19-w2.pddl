(define (problem construction-simple-t2-p19-w2)
	(:domain construction-simple)
	(:objects
		worker-1 worker-2 - worker
		truck-1 truck-2 - truck
		part-1 part-2 part-3 part-4 part-5 part-6 part-7 part-8 part-9 part-10 part-11 part-12 part-13 part-14 part-15 part-16 part-17 part-18 part-19 - part
		capacity-0 capacity-1 - capacity-number
		warehouse construction-area - location
	)
	(:init
		(at worker-1 construction-area)
		(at worker-2 construction-area)
		(at truck-1 construction-area)
		(at truck-2 construction-area)
		(at part-1 warehouse)
		(at part-2 warehouse)
		(at part-3 warehouse)
		(at part-4 warehouse)
		(at part-5 warehouse)
		(at part-6 warehouse)
		(at part-7 warehouse)
		(at part-8 warehouse)
		(at part-9 warehouse)
		(at part-10 warehouse)
		(at part-11 warehouse)
		(at part-12 warehouse)
		(at part-13 warehouse)
		(at part-14 warehouse)
		(at part-15 warehouse)
		(at part-16 warehouse)
		(at part-17 warehouse)
		(at part-18 warehouse)
		(at part-19 warehouse)
		(no-driver truck-1)
		(no-driver truck-2)
		(no-assembled part-1)
		(no-assembled part-2)
		(no-assembled part-3)
		(no-assembled part-4)
		(no-assembled part-5)
		(no-assembled part-6)
		(no-assembled part-7)
		(no-assembled part-8)
		(no-assembled part-9)
		(no-assembled part-10)
		(no-assembled part-11)
		(no-assembled part-12)
		(no-assembled part-13)
		(no-assembled part-14)
		(no-assembled part-15)
		(no-assembled part-16)
		(no-assembled part-17)
		(no-assembled part-18)
		(no-assembled part-19)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
		(capacity truck-2 capacity-1)
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
		(at part-6 construction-area)
		(assembled part-6)
		(at part-7 construction-area)
		(assembled part-7)
		(at part-8 construction-area)
		(assembled part-8)
		(at part-9 construction-area)
		(assembled part-9)
		(at part-10 construction-area)
		(assembled part-10)
		(at part-11 construction-area)
		(assembled part-11)
		(at part-12 construction-area)
		(assembled part-12)
		(at part-13 construction-area)
		(assembled part-13)
		(at part-14 construction-area)
		(assembled part-14)
		(at part-15 construction-area)
		(assembled part-15)
		(at part-16 construction-area)
		(assembled part-16)
		(at part-17 construction-area)
		(assembled part-17)
		(at part-18 construction-area)
		(assembled part-18)
		(at part-19 construction-area)
		(assembled part-19)
		)
	)
)
