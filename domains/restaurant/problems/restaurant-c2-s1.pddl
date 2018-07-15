(define (problem restaurant-c2-s1)
	(:domain restaurant)
	(:objects
		customer-1 customer-2 - customer
		server-1 - server
		dough-1 dough-2 - dough
		toppings-1 toppings-2 - toppings
		cheese-1 cheese-2 - cheese
		potato-1 potato-2 - potato
		fries-1 fries-2 - fries
		pizza-1 pizza-2 - pizza
	)
	(:init
		(at server-1 kitchen)
		(empty-hand server-1)
		(at-kitchen dough-1)
		(at-kitchen dough-2)
		(at-kitchen toppings-1)
		(at-kitchen toppings-2)
		(at-kitchen cheese-1)
		(at-kitchen cheese-2)
		(at-kitchen potato-1)
		(at-kitchen potato-2)
		(waiting-at customer-1 bar)
		(waiting-at customer-2 bar)
		(ordered-fries customer-1)
		(ordered-fries customer-2)
		(no-exist pizza-1)
		(no-exist pizza-2)
		(no-exist fries-1)
		(no-exist fries-2)
	)
	(:goal (and
		(served customer-1)
		(served customer-2)
		)
	)
)
