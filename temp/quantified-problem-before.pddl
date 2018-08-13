(define (problem p01)
(:domain y-transport)
(:objects
server-loc monitor-loc goal-loc temp-loc  - location
truck-1 truck-2  - truck
capacity-0 capacity-1 capacity-2  - capacity-number
monitor-bag1  - monitor
server-bag1  - server
)
(:init (road goal-loc temp-loc)
(capacity truck-2 capacity-2)
(no-goal temp-loc)
(at-server server-bag1 server-loc)
(at-monitor monitor-bag1 monitor-loc)
(capacity truck-1 capacity-1)
(at-truck truck-1 temp-loc)
(at-truck truck-2 temp-loc)
(road temp-loc goal-loc)
(goal goal-loc)
(road temp-loc server-loc)
(capacity-predecessor capacity-1 capacity-2)
(capacity-predecessor capacity-0 capacity-1)
(road monitor-loc temp-loc)
(road server-loc temp-loc)
(road temp-loc monitor-loc)
(no-goal monitor-loc)
(no-goal server-loc)
)
(:goal (and
	  (at-monitor monitor-bag1 goal-loc)
	  (at-server server-bag1 goal-loc))
)
)
