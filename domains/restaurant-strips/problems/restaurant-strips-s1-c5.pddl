(define (problem restaurant-strips-s1-c5)
	(:domain restaurant-strips)
	(:objects
		customer-1 customer-2 customer-3 customer-4 customer-5
		server-1
		dough-1 dough-2 dough-3 dough-4 dough-5
		toppings-1 toppings-2 toppings-3 toppings-4 toppings-5
		cheese-1 cheese-2 cheese-3 cheese-4 cheese-5
		
		
		pizza-1 pizza-2 pizza-3 pizza-4 pizza-5
		kitchen table bar
	)
	(:init
		(LOCATION kitchen)
		(LOCATION table)
		(LOCATION bar)
		(CUSTOMER customer-1)
		(CUSTOMER customer-2)
		(CUSTOMER customer-3)
		(CUSTOMER customer-4)
		(CUSTOMER customer-5)
		(SERVER server-1)
		(DOUGH dough-1)
		(DOUGH dough-2)
		(DOUGH dough-3)
		(DOUGH dough-4)
		(DOUGH dough-5)
		(TOPPINGS toppings-1)
		(TOPPINGS toppings-2)
		(TOPPINGS toppings-3)
		(TOPPINGS toppings-4)
		(TOPPINGS toppings-5)
		(CHEESE cheese-1)
		(CHEESE cheese-2)
		(CHEESE cheese-3)
		(CHEESE cheese-4)
		(CHEESE cheese-5)
		(PIZZA pizza-1)
		(PIZZA pizza-2)
		(PIZZA pizza-3)
		(PIZZA pizza-4)
		(PIZZA pizza-5)
		(waiting-at customer-1 bar)
		(ordered-pizza customer-1)
		(waiting-at customer-2 table)
		(ordered-pizza customer-2)
		(waiting-at customer-3 table)
		(ordered-pizza customer-3)
		(waiting-at customer-4 bar)
		(ordered-pizza customer-4)
		(waiting-at customer-5 table)
		(ordered-pizza customer-5)
		(at server-1 kitchen)
		(empty-hand server-1)
		(at dough-1 kitchen)
		(at dough-2 kitchen)
		(at dough-3 kitchen)
		(at dough-4 kitchen)
		(at dough-5 kitchen)
		(at toppings-1 kitchen)
		(at toppings-2 kitchen)
		(at toppings-3 kitchen)
		(at toppings-4 kitchen)
		(at toppings-5 kitchen)
		(at cheese-1 kitchen)
		(at cheese-2 kitchen)
		(at cheese-3 kitchen)
		(at cheese-4 kitchen)
		(at cheese-5 kitchen)
		(no-exist-pizza pizza-1)
		(no-exist-pizza pizza-2)
		(no-exist-pizza pizza-3)
		(no-exist-pizza pizza-4)
		(no-exist-pizza pizza-5)
	)
	(:goal (and
		(served customer-1)
		(served customer-2)
		(served customer-3)
		(served customer-4)
		(served customer-5)
		)
	)
)