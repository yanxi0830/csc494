(define (problem p01)
	
  (:domain restaurant-strips)

  (:objects 
  	customer-1 customer-2 customer-3 customer-4 customer-5 customer-6 customer-7 customer-8
  	server-1 
  	dough-1 dough-2 dough-3 dough-4 dough-5 dough-6 dough-7 dough-8
  	toppings-1 toppings-2 toppings-3 toppings-4 toppings-5 toppings-6 toppings-7 toppings-8
  	cheese-1 cheese-2 cheese-3 cheese-4 cheese-5 cheese-6 cheese-7 cheese-8
    potato-1 potato-2 potato-3 potato-4 potato-5 potato-6 potato-7 potato-8
        
  	pizza-1 pizza-2 pizza-3 pizza-4 pizza-5 pizza-6 pizza-7 pizza-8
    fries-1 fries-2 fries-3 fries-4 fries-5 fries-6 fries-7 fries-8 

    kitchen table bar
  )

  (:init 
  	; types 
  	(LOCATION kitchen)
  	(LOCATION bar)
  	(LOCATION table)
  	(CUSTOMER customer-1)
  	(CUSTOMER customer-2)
  	(CUSTOMER customer-3)
    (CUSTOMER customer-4)
    (CUSTOMER customer-5)
    (CUSTOMER customer-6)
    (CUSTOMER customer-7)
    (CUSTOMER customer-8)
  	(SERVER server-1)

  	(DOUGH dough-1)
  	(DOUGH dough-2)
  	(DOUGH dough-3)
    (DOUGH dough-4)
    (DOUGH dough-5)
    (DOUGH dough-6)
    (DOUGH dough-7)
    (DOUGH dough-8)
  	(TOPPINGS toppings-1)
  	(TOPPINGS toppings-2)
  	(TOPPINGS toppings-3)
    (TOPPINGS toppings-4)
    (TOPPINGS toppings-5)
    (TOPPINGS toppings-6)
    (TOPPINGS toppings-7)
    (TOPPINGS toppings-8)
  	(CHEESE cheese-1)
  	(CHEESE cheese-2)
  	(CHEESE cheese-3)
    (CHEESE cheese-4)
    (CHEESE cheese-5)
    (CHEESE cheese-6)
    (CHEESE cheese-7)
    (CHEESE cheese-8)
  	(POTATO potato-1)
  	(POTATO potato-2)
  	(POTATO potato-3)
    (POTATO potato-4)
    (POTATO potato-5)
    (POTATO potato-6)
    (POTATO potato-7)
    (POTATO potato-8)
  	
  	(PIZZA pizza-1)
  	(PIZZA pizza-2)
  	(PIZZA pizza-3)
    (PIZZA pizza-4)
    (PIZZA pizza-5)
    (PIZZA pizza-6)
    (PIZZA pizza-7)
    (PIZZA pizza-8)

  	(FRIES fries-1)
  	(FRIES fries-2)
  	(FRIES fries-3)
    (FRIES fries-4)
    (FRIES fries-5)
    (FRIES fries-6)
    (FRIES fries-7)
    (FRIES fries-8)

  	; initial customer states
  	(waiting-at customer-1 table)
  	(ordered-pizza customer-1)
  	(waiting-at customer-2 table)
  	(ordered-pizza customer-2)

  	(waiting-at customer-3 table)
  	(ordered-fries customer-3)
    (waiting-at customer-4 table)
    (ordered-fries customer-4)

    (waiting-at customer-5 bar)
    (ordered-pizza customer-5)
    (waiting-at customer-6 bar)
    (ordered-pizza customer-6)

    (waiting-at customer-7 bar)
    (ordered-fries customer-7)
    (waiting-at customer-8 bar)
    (ordered-fries customer-8)

  	; initial server states
  	(at server-1 kitchen)
  	(empty-hand server-1)

  	; initial ingredients states
  	(at dough-1 kitchen)
  	(at dough-2 kitchen)
  	(at dough-3 kitchen)
    (at dough-4 kitchen)
    (at dough-5 kitchen)
    (at dough-6 kitchen)
    (at dough-7 kitchen)
    (at dough-8 kitchen)
  	(at toppings-1 kitchen)
  	(at toppings-2 kitchen)
  	(at toppings-3 kitchen)
    (at toppings-4 kitchen)
    (at toppings-5 kitchen)
    (at toppings-6 kitchen)
    (at toppings-7 kitchen)
    (at toppings-8 kitchen)
  	(at cheese-1 kitchen)
  	(at cheese-2 kitchen)
  	(at cheese-3 kitchen)
    (at cheese-4 kitchen)
    (at cheese-5 kitchen)
    (at cheese-6 kitchen)
    (at cheese-7 kitchen)
    (at cheese-8 kitchen)
  	(at potato-1 kitchen)
  	(at potato-2 kitchen)
  	(at potato-3 kitchen)
    (at potato-4 kitchen)
    (at potato-5 kitchen)
    (at potato-6 kitchen)
    (at potato-7 kitchen)
    (at potato-8 kitchen)
  	(full-potato potato-1)
  	(full-potato potato-2)
  	(full-potato potato-3)
    (full-potato potato-4)
    (full-potato potato-5)
    (full-potato potato-6)
    (full-potato potato-7)
    (full-potato potato-8)

  	; initial food states
  	(no-exist-pizza pizza-1)
  	(no-exist-pizza pizza-2)
  	(no-exist-pizza pizza-3)
    (no-exist-pizza pizza-4)
    (no-exist-pizza pizza-5)
    (no-exist-pizza pizza-6)
    (no-exist-pizza pizza-7)
    (no-exist-pizza pizza-8)

  	(no-exist-fries fries-1)
  	(no-exist-fries fries-2)
  	(no-exist-fries fries-3)
    (no-exist-fries fries-4)
    (no-exist-fries fries-5)
    (no-exist-fries fries-6)
    (no-exist-fries fries-7)
    (no-exist-fries fries-8) 
  ) 

  (:goal
  	(and
  		(served customer-1)
  		(served customer-2)
  		(served customer-3)
      (served customer-4)
      (served customer-5)
      (served customer-6)
      (served customer-7)
      (served customer-8)
  		)

  ))
