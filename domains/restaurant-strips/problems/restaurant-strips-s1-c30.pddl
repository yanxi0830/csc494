(define (problem restaurant-strips-s1-c30)
	(:domain restaurant-strips)
	(:objects
		customer-1 customer-2 customer-3 customer-4 customer-5 customer-6 customer-7 customer-8 customer-9 customer-10 customer-11 customer-12 customer-13 customer-14 customer-15 customer-16 customer-17 customer-18 customer-19 customer-20 customer-21 customer-22 customer-23 customer-24 customer-25 customer-26 customer-27 customer-28 customer-29 customer-30
		server-1
		dough-1 dough-2 dough-3 dough-4 dough-5 dough-6 dough-7 dough-8 dough-9 dough-10 dough-11 dough-12 dough-13 dough-14 dough-15 dough-16 dough-17 dough-18 dough-19 dough-20 dough-21 dough-22 dough-23 dough-24 dough-25 dough-26 dough-27
		toppings-1 toppings-2 toppings-3 toppings-4 toppings-5 toppings-6 toppings-7 toppings-8 toppings-9 toppings-10 toppings-11 toppings-12 toppings-13 toppings-14 toppings-15 toppings-16 toppings-17 toppings-18 toppings-19 toppings-20 toppings-21 toppings-22 toppings-23 toppings-24 toppings-25 toppings-26 toppings-27
		cheese-1 cheese-2 cheese-3 cheese-4 cheese-5 cheese-6 cheese-7 cheese-8 cheese-9 cheese-10 cheese-11 cheese-12 cheese-13 cheese-14 cheese-15 cheese-16 cheese-17 cheese-18 cheese-19 cheese-20 cheese-21 cheese-22 cheese-23 cheese-24 cheese-25 cheese-26 cheese-27
		potato-1 potato-2 potato-3
		fries-1 fries-2 fries-3
		pizza-1 pizza-2 pizza-3 pizza-4 pizza-5 pizza-6 pizza-7 pizza-8 pizza-9 pizza-10 pizza-11 pizza-12 pizza-13 pizza-14 pizza-15 pizza-16 pizza-17 pizza-18 pizza-19 pizza-20 pizza-21 pizza-22 pizza-23 pizza-24 pizza-25 pizza-26 pizza-27
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
		(CUSTOMER customer-17)
		(CUSTOMER customer-18)
		(CUSTOMER customer-19)
		(CUSTOMER customer-20)
		(CUSTOMER customer-21)
		(CUSTOMER customer-22)
		(CUSTOMER customer-23)
		(CUSTOMER customer-24)
		(CUSTOMER customer-25)
		(CUSTOMER customer-26)
		(CUSTOMER customer-27)
		(CUSTOMER customer-28)
		(CUSTOMER customer-29)
		(CUSTOMER customer-30)
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
		(DOUGH dough-10)
		(DOUGH dough-11)
		(DOUGH dough-12)
		(DOUGH dough-13)
		(DOUGH dough-14)
		(DOUGH dough-15)
		(DOUGH dough-16)
		(DOUGH dough-17)
		(DOUGH dough-18)
		(DOUGH dough-19)
		(DOUGH dough-20)
		(DOUGH dough-21)
		(DOUGH dough-22)
		(DOUGH dough-23)
		(DOUGH dough-24)
		(DOUGH dough-25)
		(DOUGH dough-26)
		(DOUGH dough-27)
		(TOPPINGS toppings-1)
		(TOPPINGS toppings-2)
		(TOPPINGS toppings-3)
		(TOPPINGS toppings-4)
		(TOPPINGS toppings-5)
		(TOPPINGS toppings-6)
		(TOPPINGS toppings-7)
		(TOPPINGS toppings-8)
		(TOPPINGS toppings-9)
		(TOPPINGS toppings-10)
		(TOPPINGS toppings-11)
		(TOPPINGS toppings-12)
		(TOPPINGS toppings-13)
		(TOPPINGS toppings-14)
		(TOPPINGS toppings-15)
		(TOPPINGS toppings-16)
		(TOPPINGS toppings-17)
		(TOPPINGS toppings-18)
		(TOPPINGS toppings-19)
		(TOPPINGS toppings-20)
		(TOPPINGS toppings-21)
		(TOPPINGS toppings-22)
		(TOPPINGS toppings-23)
		(TOPPINGS toppings-24)
		(TOPPINGS toppings-25)
		(TOPPINGS toppings-26)
		(TOPPINGS toppings-27)
		(CHEESE cheese-1)
		(CHEESE cheese-2)
		(CHEESE cheese-3)
		(CHEESE cheese-4)
		(CHEESE cheese-5)
		(CHEESE cheese-6)
		(CHEESE cheese-7)
		(CHEESE cheese-8)
		(CHEESE cheese-9)
		(CHEESE cheese-10)
		(CHEESE cheese-11)
		(CHEESE cheese-12)
		(CHEESE cheese-13)
		(CHEESE cheese-14)
		(CHEESE cheese-15)
		(CHEESE cheese-16)
		(CHEESE cheese-17)
		(CHEESE cheese-18)
		(CHEESE cheese-19)
		(CHEESE cheese-20)
		(CHEESE cheese-21)
		(CHEESE cheese-22)
		(CHEESE cheese-23)
		(CHEESE cheese-24)
		(CHEESE cheese-25)
		(CHEESE cheese-26)
		(CHEESE cheese-27)
		(POTATO potato-1)
		(POTATO potato-2)
		(POTATO potato-3)
		(PIZZA pizza-1)
		(PIZZA pizza-2)
		(PIZZA pizza-3)
		(PIZZA pizza-4)
		(PIZZA pizza-5)
		(PIZZA pizza-6)
		(PIZZA pizza-7)
		(PIZZA pizza-8)
		(PIZZA pizza-9)
		(PIZZA pizza-10)
		(PIZZA pizza-11)
		(PIZZA pizza-12)
		(PIZZA pizza-13)
		(PIZZA pizza-14)
		(PIZZA pizza-15)
		(PIZZA pizza-16)
		(PIZZA pizza-17)
		(PIZZA pizza-18)
		(PIZZA pizza-19)
		(PIZZA pizza-20)
		(PIZZA pizza-21)
		(PIZZA pizza-22)
		(PIZZA pizza-23)
		(PIZZA pizza-24)
		(PIZZA pizza-25)
		(PIZZA pizza-26)
		(PIZZA pizza-27)
		(FRIES fries-1)
		(FRIES fries-2)
		(FRIES fries-3)
		(waiting-at customer-1 table)
		(ordered-pizza customer-1)
		(waiting-at customer-2 table)
		(ordered-pizza customer-2)
		(waiting-at customer-3 table)
		(ordered-pizza customer-3)
		(waiting-at customer-4 bar)
		(ordered-pizza customer-4)
		(waiting-at customer-5 table)
		(ordered-pizza customer-5)
		(waiting-at customer-6 table)
		(ordered-pizza customer-6)
		(waiting-at customer-7 table)
		(ordered-pizza customer-7)
		(waiting-at customer-8 table)
		(ordered-pizza customer-8)
		(waiting-at customer-9 bar)
		(ordered-pizza customer-9)
		(waiting-at customer-10 table)
		(ordered-pizza customer-10)
		(waiting-at customer-11 bar)
		(ordered-pizza customer-11)
		(waiting-at customer-12 table)
		(ordered-pizza customer-12)
		(waiting-at customer-13 table)
		(ordered-pizza customer-13)
		(waiting-at customer-14 bar)
		(ordered-pizza customer-14)
		(waiting-at customer-15 bar)
		(ordered-pizza customer-15)
		(waiting-at customer-16 bar)
		(ordered-pizza customer-16)
		(waiting-at customer-17 table)
		(ordered-pizza customer-17)
		(waiting-at customer-18 bar)
		(ordered-pizza customer-18)
		(waiting-at customer-19 bar)
		(ordered-pizza customer-19)
		(waiting-at customer-20 bar)
		(ordered-pizza customer-20)
		(waiting-at customer-21 table)
		(ordered-pizza customer-21)
		(waiting-at customer-22 bar)
		(ordered-pizza customer-22)
		(waiting-at customer-23 table)
		(ordered-pizza customer-23)
		(waiting-at customer-24 table)
		(ordered-pizza customer-24)
		(waiting-at customer-25 bar)
		(ordered-pizza customer-25)
		(waiting-at customer-26 bar)
		(ordered-pizza customer-26)
		(waiting-at customer-27 bar)
		(ordered-pizza customer-27)
		(waiting-at customer-28 table)
		(ordered-fries customer-28)
		(waiting-at customer-29 bar)
		(ordered-fries customer-29)
		(waiting-at customer-30 bar)
		(ordered-fries customer-30)
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
		(at dough-10 kitchen)
		(at dough-11 kitchen)
		(at dough-12 kitchen)
		(at dough-13 kitchen)
		(at dough-14 kitchen)
		(at dough-15 kitchen)
		(at dough-16 kitchen)
		(at dough-17 kitchen)
		(at dough-18 kitchen)
		(at dough-19 kitchen)
		(at dough-20 kitchen)
		(at dough-21 kitchen)
		(at dough-22 kitchen)
		(at dough-23 kitchen)
		(at dough-24 kitchen)
		(at dough-25 kitchen)
		(at dough-26 kitchen)
		(at dough-27 kitchen)
		(at toppings-1 kitchen)
		(at toppings-2 kitchen)
		(at toppings-3 kitchen)
		(at toppings-4 kitchen)
		(at toppings-5 kitchen)
		(at toppings-6 kitchen)
		(at toppings-7 kitchen)
		(at toppings-8 kitchen)
		(at toppings-9 kitchen)
		(at toppings-10 kitchen)
		(at toppings-11 kitchen)
		(at toppings-12 kitchen)
		(at toppings-13 kitchen)
		(at toppings-14 kitchen)
		(at toppings-15 kitchen)
		(at toppings-16 kitchen)
		(at toppings-17 kitchen)
		(at toppings-18 kitchen)
		(at toppings-19 kitchen)
		(at toppings-20 kitchen)
		(at toppings-21 kitchen)
		(at toppings-22 kitchen)
		(at toppings-23 kitchen)
		(at toppings-24 kitchen)
		(at toppings-25 kitchen)
		(at toppings-26 kitchen)
		(at toppings-27 kitchen)
		(at cheese-1 kitchen)
		(at cheese-2 kitchen)
		(at cheese-3 kitchen)
		(at cheese-4 kitchen)
		(at cheese-5 kitchen)
		(at cheese-6 kitchen)
		(at cheese-7 kitchen)
		(at cheese-8 kitchen)
		(at cheese-9 kitchen)
		(at cheese-10 kitchen)
		(at cheese-11 kitchen)
		(at cheese-12 kitchen)
		(at cheese-13 kitchen)
		(at cheese-14 kitchen)
		(at cheese-15 kitchen)
		(at cheese-16 kitchen)
		(at cheese-17 kitchen)
		(at cheese-18 kitchen)
		(at cheese-19 kitchen)
		(at cheese-20 kitchen)
		(at cheese-21 kitchen)
		(at cheese-22 kitchen)
		(at cheese-23 kitchen)
		(at cheese-24 kitchen)
		(at cheese-25 kitchen)
		(at cheese-26 kitchen)
		(at cheese-27 kitchen)
		(at potato-1 kitchen)
		(at potato-2 kitchen)
		(at potato-3 kitchen)
		(full-potato potato-1)
		(full-potato potato-2)
		(full-potato potato-3)
		(no-exist-pizza pizza-1)
		(no-exist-pizza pizza-2)
		(no-exist-pizza pizza-3)
		(no-exist-pizza pizza-4)
		(no-exist-pizza pizza-5)
		(no-exist-pizza pizza-6)
		(no-exist-pizza pizza-7)
		(no-exist-pizza pizza-8)
		(no-exist-pizza pizza-9)
		(no-exist-pizza pizza-10)
		(no-exist-pizza pizza-11)
		(no-exist-pizza pizza-12)
		(no-exist-pizza pizza-13)
		(no-exist-pizza pizza-14)
		(no-exist-pizza pizza-15)
		(no-exist-pizza pizza-16)
		(no-exist-pizza pizza-17)
		(no-exist-pizza pizza-18)
		(no-exist-pizza pizza-19)
		(no-exist-pizza pizza-20)
		(no-exist-pizza pizza-21)
		(no-exist-pizza pizza-22)
		(no-exist-pizza pizza-23)
		(no-exist-pizza pizza-24)
		(no-exist-pizza pizza-25)
		(no-exist-pizza pizza-26)
		(no-exist-pizza pizza-27)
		(no-exist-fries fries-1)
		(no-exist-fries fries-2)
		(no-exist-fries fries-3)
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
		(served customer-17)
		(served customer-18)
		(served customer-19)
		(served customer-20)
		(served customer-21)
		(served customer-22)
		(served customer-23)
		(served customer-24)
		(served customer-25)
		(served customer-26)
		(served customer-27)
		(served customer-28)
		(served customer-29)
		(served customer-30)
		)
	)
)
