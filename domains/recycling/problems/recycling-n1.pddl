(define (problem recycling-n1)
	(:domain recycling)
	(:objects
		glass-1 - glass
		
		bin-1 - bin
		gc - glass-container
		pc - paper-container
	)
	(:init
		(in glass-1 bin-1)
		(not (empty bin-1))
		(at bin-1)
	)
	(:goal (and
		(in glass-1 gc)
		(empty bin-1)
		)
	)
)
