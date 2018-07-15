(define (problem p01)
	
  (:domain restaurant-simple)

  (:objects 
  	customer-1 customer-2 customer-3 customer-4 - customer
  	server-1 server-2 - server
  	fries-1 fries-2 fries-3 fries-4 - fries
  	pizza-1 pizza-2 pizza-3 pizza-4 - pizza
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

    (ordered-pizza customer-1)
    (ordered-pizza customer-2)
    (ordered-pizza customer-3)
    (ordered-fries customer-4)

    (no-exist pizza-1)
    (no-exist pizza-2)
    (no-exist pizza-3)
    (no-exist pizza-4)

    (no-exist fries-1)
    (no-exist fries-2)
    (no-exist fries-3)
    (no-exist fries-4)
  ) 

  (:goal
  	(and 
      (served customer-1)
      (served customer-2)
      (served customer-3)
      (served customer-4))
  ))
