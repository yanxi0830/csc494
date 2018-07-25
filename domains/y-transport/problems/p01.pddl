(define (problem p01)
	
  (:domain y-transport)

  (:objects 
  	monitor-1 monitor-2 - monitor
  	server-1 server-2 - server
  	capacity-0 capacity-1 capacity-2 - capacity-number
  )

  (:init 
  	(capacity-predecessor capacity-0 capacity-1)
  	(capacity-predecessor capacity-1 capacity-2)
  	(road monitor-loc temp-loc)
  	(road temp-loc monitor-loc)
  	(road server-loc temp-loc)
  	(road temp-loc server-loc)
  	(road goal-loc temp-loc)
  	(road temp-loc goal-loc)

  	(at monitor-1 monitor-loc)
  	(at monitor-2 monitor-loc)
  	(at server-1 server-loc)
  	(at server-2 server-loc)

  	(at truck-1 temp-loc)
  	(at truck-2 temp-loc)
  	(capacity truck-1 capacity-1)
  	(capacity truck-2 capacity-2)

  	(goal goal-loc)
  	(no-goal monitor-loc)
  	(no-goal server-loc)
  	(no-goal temp-loc)
  	
  ) 

  (:goal
  	(and
  		(at monitor-1 goal-loc)
  		(at monitor-2 goal-loc)
  		(at server-1 goal-loc)
  		(at server-2 goal-loc))
  ))
