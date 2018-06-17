(define (problem ytransport-n9-m9)
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
		(at monitor-3 L1)
		(at monitor-4 L1)
		(at monitor-5 L1)
		(at monitor-6 L1)
		(at monitor-7 L1)
		(at monitor-8 L1)
		(at monitor-9 L1)
		(at - L1)
		(at monitor L1)
		(at server-1 L2)
		(at server-2 L2)
		(at server-3 L2)
		(at server-4 L2)
		(at server-5 L2)
		(at server-6 L2)
		(at server-7 L2)
		(at server-8 L2)
		(at server-9 L2)
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
		(at monitor-3 L3)
		(at monitor-4 L3)
		(at monitor-5 L3)
		(at monitor-6 L3)
		(at monitor-7 L3)
		(at monitor-8 L3)
		(at monitor-9 L3)
		(at - L3)
		(at monitor L3)
		(at server-1 L3)
		(at server-2 L3)
		(at server-3 L3)
		(at server-4 L3)
		(at server-5 L3)
		(at server-6 L3)
		(at server-7 L3)
		(at server-8 L3)
		(at server-9 L3)
		(at - L3)
		(at server L3)
		)
	)
)