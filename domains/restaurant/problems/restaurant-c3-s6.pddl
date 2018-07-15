(define (problem restaurant-c3-s6)
	(:domain restaurant)
	(:objects
		customer-1 customer-2 customer-3 - customer
		server-1 server-2 server-3 server-4 server-5 server-6 - server
		dough-1 dough-2 dough-3 - dough
		toppings-1 toppings-2 toppings-3 - toppings
		cheese-1 cheese-2 cheese-3 - cheese
		potato-1 potato-2 potato-3 - potato
		fries-1 fries-2 fries-3 - fries
		pizza-1 pizza-2 pizza-3 - pizza
	)
	(:init
		(at server-1 kitchen)
		(empty-hand server-1)
		(at server-2 kitchen)
		(empty-hand server-2)
		(at server-3 kitchen)
		(empty-hand server-3)
		(at server-4 kitchen)
		(empty-hand server-4)
		(at server-5 kitchen)
		(empty-hand server-5)
		(at server-6 kitchen)
		(empty-hand server-6)
		(at-kitchen dough-1)
		(at-kitchen dough-2)
		(at-kitchen dough-3)
		(at-kitchen toppings-1)
		(at-kitchen toppings-2)
		(at-kitchen toppings-3)
		(at-kitchen cheese-1)
		(at-kitchen cheese-2)
		(at-kitchen cheese-3)
		(at-kitchen potato-1)
		(at-kitchen potato-2)
		(at-kitchen potato-3)
		(waiting-at customer-1 bar)
		(waiting-at customer-2 bar)
		(waiting-at customer-3 bar)
		(ordered-pizza customer-1)
		(ordered-pizza customer-2)
		(ordered-pizza customer-3)
		(no-exist pizza-1)
		(no-exist pizza-2)
		(no-exist pizza-3)
		(no-exist fries-1)
		(no-exist fries-2)
		(no-exist fries-3)
	)
	(:goal (and
		(served customer-1)
		(served customer-2)
		(served customer-3)
		)
	)
)
