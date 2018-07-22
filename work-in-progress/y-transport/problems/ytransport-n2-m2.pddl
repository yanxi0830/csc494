(define (problem ytransport-n2-m2)
	(:domain y-transport)
	(:objects
		monitor-1 monitor-2 - monitor
		server-1 server-2 - server
		capacity-0 capacity-1 capacity-2 - capacity-number
	)
	(:init
		(capacity-predecessor capacity-0 capacity-1)
		(capacity-predecessor capacity-1 capacity-2)
		(path L1 D)
		(path L2 D)
		(path L3 D)
		(at monitor-1 L1)
		(at monitor-2 L1)
		(at server-1 L2)
		(at server-2 L2)
		(at T1 L1)
		(capacity T1 capacity-1)
		(at T2 L2)
		(capacity T2 capacity-2)
		(goal L3)
	)
	(:goal (and
		(at monitor-1 L3)
		(at monitor-2 L3)
		(at server-1 L3)
		(at server-2 L3)
		)
	)
)
