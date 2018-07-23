(define (problem restaurant-strips-s1-c2)
	(:domain restaurant-strips)
	(:objects
		customer-1 customer-2
		server-1
		dough-1 dough-2
		toppings-1 toppings-2
		cheese-1 cheese-2
		
		
		pizza-1 pizza-2
		kitchen table bar
	)
	(:init
		(LOCATION kitchen)
		(LOCATION table)
		(LOCATION bar)
		(CUSTOMER customer-1)
		(CUSTOMER customer-2)
		(SERVER server-1)
		(DOUGH dough-1)
		(DOUGH dough-2)
		(TOPPINGS toppings-1)
		(TOPPINGS toppings-2)
		(CHEESE cheese-1)
		(CHEESE cheese-2)
		(PIZZA pizza-1)
		(PIZZA pizza-2)
		(waiting-at customer-1 table)
		(ordered-pizza customer-1)
		(waiting-at customer-2 table)
		(ordered-pizza customer-2)
		(at server-1 kitchen)
		(empty-hand server-1)
		(at dough-1 kitchen)
		(at dough-2 kitchen)
		(at toppings-1 kitchen)
		(at toppings-2 kitchen)
		(at cheese-1 kitchen)
		(at cheese-2 kitchen)
		(no-exist-pizza pizza-1)
		(no-exist-pizza pizza-2)
	)
	(:goal (and
		(served customer-1)
		(served customer-2)
		)
	)
)
