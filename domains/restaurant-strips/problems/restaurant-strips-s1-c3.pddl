(define (problem restaurant-strips-s1-c3)
	(:domain restaurant-strips)
	(:objects
		customer-1 customer-2 customer-3
		server-1
		dough-1
		toppings-1
		cheese-1
		potato-1 potato-2
		fries-1 fries-2
		pizza-1
		kitchen table bar
	)
	(:init
		(LOCATION kitchen)
		(LOCATION table)
		(LOCATION bar)
		(CUSTOMER customer-1)
		(CUSTOMER customer-2)
		(CUSTOMER customer-3)
		(SERVER server-1)
		(DOUGH dough-1)
		(TOPPINGS toppings-1)
		(CHEESE cheese-1)
		(POTATO potato-1)
		(POTATO potato-2)
		(PIZZA pizza-1)
		(FRIES fries-1)
		(FRIES fries-2)
		(waiting-at customer-1 table)
		(ordered-pizza customer-1)
		(waiting-at customer-2 bar)
		(ordered-fries customer-2)
		(waiting-at customer-3 bar)
		(ordered-fries customer-3)
		(at server-1 kitchen)
		(empty-hand server-1)
		(at dough-1 kitchen)
		(at toppings-1 kitchen)
		(at cheese-1 kitchen)
		(at potato-1 kitchen)
		(at potato-2 kitchen)
		(full-potato potato-1)
		(full-potato potato-2)
		(no-exist-pizza pizza-1)
		(no-exist-fries fries-1)
		(no-exist-fries fries-2)
	)
	(:goal (and
		(served customer-1)
		(served customer-2)
		(served customer-3)
		)
	)
)
