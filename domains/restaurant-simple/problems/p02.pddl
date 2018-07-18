(define (problem p01)
	
  (:domain restaurant-simple)

  (:objects 
  	customer-1 customer-2 - customer
  	server-1 server-2 - server
  	fries-1 fries-2 - fries
  	pizza-1 pizza-2 - pizza
  )

  (:init 
  	(at server-1 kitchen)
  	(at server-2 kitchen)

    (empty-hand server-1)
    (empty-hand server-2)
  	
  	(waiting-at customer-1 table)
    (waiting-at customer-2 bar)

    (ordered-pizza customer-1)
    (ordered-pizza customer-2)

    (at-kitchen-food fries-1)
    (at-kitchen-food fries-2)

    (at-kitchen-food pizza-1)
    (at-kitchen-food pizza-2)

  ) 

  (:goal
  	(and 
      (served customer-1)
      (served customer-2))
  ))
