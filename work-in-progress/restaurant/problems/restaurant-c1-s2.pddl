(define (problem restaurant-c1-s2)
	(:domain restaurant)
	(:objects
		customer-1 - customer
		server-1 server-2 - server
		dough-1 - dough
		toppings-1 - toppings
		cheese-1 - cheese
		potato-1 - potato
		fries-1 - fries
		pizza-1 - pizza
	)
	(:init
		(at server-1 kitchen)
		(empty-hand server-1)
		(at server-2 kitchen)
		(empty-hand server-2)
		(at-kitchen dough-1)
		(at-kitchen toppings-1)
		(at-kitchen cheese-1)
		(at-kitchen potato-1)
		(waiting-at customer-1 bar)
		(ordered-pizza customer-1)
		(no-exist pizza-1)
		(no-exist fries-1)
	)
	(:goal (and
		(served customer-1)
		)
	)
)
