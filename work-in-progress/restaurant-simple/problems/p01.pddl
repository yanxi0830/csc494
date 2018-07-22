(define (problem p01)
	
  (:domain restaurant-simple)

  (:objects 
  	customer-1 customer-2 customer-3 customer-4 customer-5 customer-6 - customer
  	server-1 server-2 - server
  	fries-1 fries-2 fries-3 fries-4 fries-5 fries-6 - fries
  	pizza-1 pizza-2 pizza-3 pizza-4 pizza-5 pizza-6 - pizza
  )

  (:init 
  	(at server-1 kitchen)
  	(at server-2 kitchen)

    (empty-hand server-1)
    (empty-hand server-2)
  	
  	(waiting-at customer-1 table)
    (waiting-at customer-2 bar)
    (waiting-at customer-3 table)
    (waiting-at customer-4 table)
    (waiting-at customer-5 bar)
    (waiting-at customer-6 table)

    (ordered-pizza customer-1)
    (ordered-pizza customer-2)
    (ordered-pizza customer-3)
    (ordered-fries customer-4)
    (ordered-fries customer-5)
    (ordered-fries customer-6)

    (at-kitchen-food fries-1)
    (at-kitchen-food fries-2)
    (at-kitchen-food fries-3)
    (at-kitchen-food fries-4)
    (at-kitchen-food fries-5)
    (at-kitchen-food fries-6)

    (at-kitchen-food pizza-1)
    (at-kitchen-food pizza-2)
    (at-kitchen-food pizza-3)
    (at-kitchen-food pizza-4)
    (at-kitchen-food pizza-5)
    (at-kitchen-food pizza-6)

  ) 

  (:goal
  	(and 
      (served customer-1)
      (served customer-2)
      (served customer-3)
      (served customer-4)
      (served customer-5)
      (served customer-6))
  ))
