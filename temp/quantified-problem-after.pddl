(define (problem p01)
(:domain y-transport)
(:objects
server-loc monitor-loc goal-loc temp-loc  - location
truck-1 truck-2  - truck
capacity-0 capacity-1 capacity-2  - capacity-number
monitor-bag1  - monitor
server-bag1  - server
)
(:init (no-goal monitor-loc)
(road server-loc temp-loc)
(road temp-loc goal-loc)
(no-goal temp-loc)
(capacity truck-1 capacity-1)
(capacity-predecessor capacity-0 capacity-1)
(capacity truck-2 capacity-2)
(at monitor-bag1 monitor-loc)
(capacity-predecessor capacity-1 capacity-2)
(road temp-loc monitor-loc)
(goal goal-loc)
(at truck-1 temp-loc)
(road temp-loc server-loc)
(no-goal server-loc)
(at server-bag1 server-loc)
(road monitor-loc temp-loc)
(road goal-loc temp-loc)
(at truck-2 temp-loc)
)
(:goal (and
	  (at server-bag1 goal-loc)
	  (at monitor-bag1 goal-loc))
)
)
