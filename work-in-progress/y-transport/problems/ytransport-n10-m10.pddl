(define (problem ytransport-n10-m10)
	(:domain y-transport)
	(:objects
		monitor-1 monitor-2 monitor-3 monitor-4 monitor-5 monitor-6 monitor-7 monitor-8 monitor-9 monitor-10 - monitor
		server-1 server-2 server-3 server-4 server-5 server-6 server-7 server-8 server-9 server-10 - server
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
		(at monitor-3 L1)
		(at monitor-4 L1)
		(at monitor-5 L1)
		(at monitor-6 L1)
		(at monitor-7 L1)
		(at monitor-8 L1)
		(at monitor-9 L1)
		(at monitor-10 L1)
		(at server-1 L2)
		(at server-2 L2)
		(at server-3 L2)
		(at server-4 L2)
		(at server-5 L2)
		(at server-6 L2)
		(at server-7 L2)
		(at server-8 L2)
		(at server-9 L2)
		(at server-10 L2)
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
		(at monitor-10 L3)
		(at server-1 L3)
		(at server-2 L3)
		(at server-3 L3)
		(at server-4 L3)
		(at server-5 L3)
		(at server-6 L3)
		(at server-7 L3)
		(at server-8 L3)
		(at server-9 L3)
		(at server-10 L3)
		)
	)
)
