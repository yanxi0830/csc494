(define (problem restaurant-strips-s1-c16)
	(:domain restaurant-strips)
	(:objects
		customer-1 customer-2 customer-3 customer-4 customer-5 customer-6 customer-7 customer-8 customer-9 customer-10 customer-11 customer-12 customer-13 customer-14 customer-15 customer-16
		server-1
		dough-1 dough-2 dough-3 dough-4 dough-5 dough-6 dough-7 dough-8 dough-9
		toppings-1 toppings-2 toppings-3 toppings-4 toppings-5 toppings-6 toppings-7 toppings-8 toppings-9
		cheese-1 cheese-2 cheese-3 cheese-4 cheese-5 cheese-6 cheese-7 cheese-8 cheese-9
		potato-1 potato-2 potato-3 potato-4 potato-5 potato-6 potato-7
		fries-1 fries-2 fries-3 fries-4 fries-5 fries-6 fries-7
		pizza-1 pizza-2 pizza-3 pizza-4 pizza-5 pizza-6 pizza-7 pizza-8 pizza-9
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
		(CUSTOMER customer-6)
		(CUSTOMER customer-7)
		(CUSTOMER customer-8)
		(CUSTOMER customer-9)
		(CUSTOMER customer-10)
		(CUSTOMER customer-11)
		(CUSTOMER customer-12)
		(CUSTOMER customer-13)
		(CUSTOMER customer-14)
		(CUSTOMER customer-15)
		(CUSTOMER customer-16)
		(SERVER server-1)
		(DOUGH dough-1)
		(DOUGH dough-2)
		(DOUGH dough-3)
		(DOUGH dough-4)
		(DOUGH dough-5)
		(DOUGH dough-6)
		(DOUGH dough-7)
		(DOUGH dough-8)
		(DOUGH dough-9)
		(TOPPINGS toppings-1)
		(TOPPINGS toppings-2)
		(TOPPINGS toppings-3)
		(TOPPINGS toppings-4)
		(TOPPINGS toppings-5)
		(TOPPINGS toppings-6)
		(TOPPINGS toppings-7)
		(TOPPINGS toppings-8)
		(TOPPINGS toppings-9)
		(CHEESE cheese-1)
		(CHEESE cheese-2)
		(CHEESE cheese-3)
		(CHEESE cheese-4)
		(CHEESE cheese-5)
		(CHEESE cheese-6)
		(CHEESE cheese-7)
		(CHEESE cheese-8)
		(CHEESE cheese-9)
		(POTATO potato-1)
		(POTATO potato-2)
		(POTATO potato-3)
		(POTATO potato-4)
		(POTATO potato-5)
		(POTATO potato-6)
		(POTATO potato-7)
		(PIZZA pizza-1)
		(PIZZA pizza-2)
		(PIZZA pizza-3)
		(PIZZA pizza-4)
		(PIZZA pizza-5)
		(PIZZA pizza-6)
		(PIZZA pizza-7)
		(PIZZA pizza-8)
		(PIZZA pizza-9)
		(FRIES fries-1)
		(FRIES fries-2)
		(FRIES fries-3)
		(FRIES fries-4)
		(FRIES fries-5)
		(FRIES fries-6)
		(FRIES fries-7)
		(waiting-at customer-1 table)
		(ordered-pizza customer-1)
		(waiting-at customer-2 bar)
		(ordered-pizza customer-2)
		(waiting-at customer-3 bar)
		(ordered-pizza customer-3)
		(waiting-at customer-4 table)
		(ordered-pizza customer-4)
		(waiting-at customer-5 bar)
		(ordered-pizza customer-5)
		(waiting-at customer-6 bar)
		(ordered-pizza customer-6)
		(waiting-at customer-7 table)
		(ordered-pizza customer-7)
		(waiting-at customer-8 table)
		(ordered-pizza customer-8)
		(waiting-at customer-9 table)
		(ordered-pizza customer-9)
		(waiting-at customer-10 table)
		(ordered-fries customer-10)
		(waiting-at customer-11 table)
		(ordered-fries customer-11)
		(waiting-at customer-12 bar)
		(ordered-fries customer-12)
		(waiting-at customer-13 table)
		(ordered-fries customer-13)
		(waiting-at customer-14 table)
		(ordered-fries customer-14)
		(waiting-at customer-15 table)
		(ordered-fries customer-15)
		(waiting-at customer-16 table)
		(ordered-fries customer-16)
		(at server-1 kitchen)
		(empty-hand server-1)
		(at dough-1 kitchen)
		(at dough-2 kitchen)
		(at dough-3 kitchen)
		(at dough-4 kitchen)
		(at dough-5 kitchen)
		(at dough-6 kitchen)
		(at dough-7 kitchen)
		(at dough-8 kitchen)
		(at dough-9 kitchen)
		(at toppings-1 kitchen)
		(at toppings-2 kitchen)
		(at toppings-3 kitchen)
		(at toppings-4 kitchen)
		(at toppings-5 kitchen)
		(at toppings-6 kitchen)
		(at toppings-7 kitchen)
		(at toppings-8 kitchen)
		(at toppings-9 kitchen)
		(at cheese-1 kitchen)
		(at cheese-2 kitchen)
		(at cheese-3 kitchen)
		(at cheese-4 kitchen)
		(at cheese-5 kitchen)
		(at cheese-6 kitchen)
		(at cheese-7 kitchen)
		(at cheese-8 kitchen)
		(at cheese-9 kitchen)
		(at potato-1 kitchen)
		(at potato-2 kitchen)
		(at potato-3 kitchen)
		(at potato-4 kitchen)
		(at potato-5 kitchen)
		(at potato-6 kitchen)
		(at potato-7 kitchen)
		(full-potato potato-1)
		(full-potato potato-2)
		(full-potato potato-3)
		(full-potato potato-4)
		(full-potato potato-5)
		(full-potato potato-6)
		(full-potato potato-7)
		(no-exist-pizza pizza-1)
		(no-exist-pizza pizza-2)
		(no-exist-pizza pizza-3)
		(no-exist-pizza pizza-4)
		(no-exist-pizza pizza-5)
		(no-exist-pizza pizza-6)
		(no-exist-pizza pizza-7)
		(no-exist-pizza pizza-8)
		(no-exist-pizza pizza-9)
		(no-exist-fries fries-1)
		(no-exist-fries fries-2)
		(no-exist-fries fries-3)
		(no-exist-fries fries-4)
		(no-exist-fries fries-5)
		(no-exist-fries fries-6)
		(no-exist-fries fries-7)
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
		(served customer-10)
		(served customer-11)
		(served customer-12)
		(served customer-13)
		(served customer-14)
		(served customer-15)
		(served customer-16)
		)
	)
)
