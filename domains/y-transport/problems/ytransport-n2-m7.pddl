(define (problem ytransport-n2-m7)
	(:domain y-transport)
	(:objects
	)
	(:init
		(capacity-predecessor capacity-0 capacity-1)
		(capacity-predecessor capacity-1 capacity-2)
		(path L1 D)
		(path L2 D)
		(path L3 D)
		(at monitor-1 L1)
		(at monitor-2 L1)
		(at - L1)
		(at monitor L1)
		(at server-1 L2)
		(at server-2 L2)
		(at - L2)
		(at server L2)
		(at T1 L1)
		(capacity T1 capacity-1)
		(at T2 L2)
		(capacity T2 capacity-2)
		(goal L3)
	)
	(:goal (and
		(at monitor-1 L3)
		(at monitor-2 L3)
		(at - L3)
		(at monitor L3)
		(at server-1 L3)
		(at server-2 L3)
		(at - L3)
		(at server L3)
		)
	)
)
