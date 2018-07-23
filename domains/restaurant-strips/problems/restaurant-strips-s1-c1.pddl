(define (problem restaurant-strips-s1-c1)
	(:domain restaurant-strips)
	(:objects
		customer-1
		server-1
		
		
		
		potato-1
		fries-1
		
		kitchen table bar
	)
	(:init
		(LOCATION kitchen)
		(LOCATION table)
		(LOCATION bar)
		(CUSTOMER customer-1)
		(SERVER server-1)
		(POTATO potato-1)
		(FRIES fries-1)
		(waiting-at customer-1 table)
		(ordered-fries customer-1)
		(at server-1 kitchen)
		(empty-hand server-1)
		(at potato-1 kitchen)
		(full-potato potato-1)
		(no-exist-fries fries-1)
	)
	(:goal (and
		(served customer-1)
		)
	)
)
