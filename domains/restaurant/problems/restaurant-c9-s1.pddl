(define (problem restaurant-c9-s1)
	(:domain restaurant)
	(:objects
		customer-1 customer-2 customer-3 customer-4 customer-5 customer-6 customer-7 customer-8 customer-9 - customer
		server-1 - server
		dough-1 dough-2 dough-3 dough-4 dough-5 dough-6 dough-7 dough-8 dough-9 - dough
		toppings-1 toppings-2 toppings-3 toppings-4 toppings-5 toppings-6 toppings-7 toppings-8 toppings-9 - toppings
		cheese-1 cheese-2 cheese-3 cheese-4 cheese-5 cheese-6 cheese-7 cheese-8 cheese-9 - cheese
		potato-1 potato-2 potato-3 potato-4 potato-5 potato-6 potato-7 potato-8 potato-9 - potato
		fries-1 fries-2 fries-3 fries-4 fries-5 fries-6 fries-7 fries-8 fries-9 - fries
		pizza-1 pizza-2 pizza-3 pizza-4 pizza-5 pizza-6 pizza-7 pizza-8 pizza-9 - pizza
	)
	(:init
		(at server-1 kitchen)
		(empty-hand server-1)
		(at-kitchen dough-1)
		(at-kitchen dough-2)
		(at-kitchen dough-3)
		(at-kitchen dough-4)
		(at-kitchen dough-5)
		(at-kitchen dough-6)
		(at-kitchen dough-7)
		(at-kitchen dough-8)
		(at-kitchen dough-9)
		(at-kitchen toppings-1)
		(at-kitchen toppings-2)
		(at-kitchen toppings-3)
		(at-kitchen toppings-4)
		(at-kitchen toppings-5)
		(at-kitchen toppings-6)
		(at-kitchen toppings-7)
		(at-kitchen toppings-8)
		(at-kitchen toppings-9)
		(at-kitchen cheese-1)
		(at-kitchen cheese-2)
		(at-kitchen cheese-3)
		(at-kitchen cheese-4)
		(at-kitchen cheese-5)
		(at-kitchen cheese-6)
		(at-kitchen cheese-7)
		(at-kitchen cheese-8)
		(at-kitchen cheese-9)
		(at-kitchen potato-1)
		(at-kitchen potato-2)
		(at-kitchen potato-3)
		(at-kitchen potato-4)
		(at-kitchen potato-5)
		(at-kitchen potato-6)
		(at-kitchen potato-7)
		(at-kitchen potato-8)
		(at-kitchen potato-9)
		(waiting-at customer-1 bar)
		(waiting-at customer-2 table)
		(waiting-at customer-3 bar)
		(waiting-at customer-4 bar)
		(waiting-at customer-5 bar)
		(waiting-at customer-6 table)
		(waiting-at customer-7 bar)
		(waiting-at customer-8 table)
		(waiting-at customer-9 bar)
		(ordered-pizza customer-1)
		(ordered-pizza customer-2)
		(ordered-fries customer-3)
		(ordered-pizza customer-4)
		(ordered-pizza customer-5)
		(ordered-pizza customer-6)
		(ordered-pizza customer-7)
		(ordered-pizza customer-8)
		(ordered-pizza customer-9)
		(no-exist pizza-1)
		(no-exist pizza-2)
		(no-exist pizza-3)
		(no-exist pizza-4)
		(no-exist pizza-5)
		(no-exist pizza-6)
		(no-exist pizza-7)
		(no-exist pizza-8)
		(no-exist pizza-9)
		(no-exist fries-1)
		(no-exist fries-2)
		(no-exist fries-3)
		(no-exist fries-4)
		(no-exist fries-5)
		(no-exist fries-6)
		(no-exist fries-7)
		(no-exist fries-8)
		(no-exist fries-9)
	)
	(:goal (and
		(served customer-1)
		(served customer-2)
		(served customer-3)
		(served customer-4)
		(served customer-5)
		(served customer-6)
		(served customer-7)
		(served customer-8)
		(served customer-9)
		)
	)
)
