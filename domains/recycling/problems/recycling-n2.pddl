(define (problem recycling-n2)
	(:domain recycling)
	(:objects
		
		paper-1 paper-2 - paper
		bin-1 bin-2 - bin
		gc - glass-container
		pc - paper-container
	)
	(:init
		(in paper-1 bin-1)
		(not (empty bin-1))
		(in paper-2 bin-2)
		(not (empty bin-2))
		(at bin-2)
	)
	(:goal (and
		(in paper-1 pc)
		(in paper-2 pc)
		(empty bin-1)
		(empty bin-2)
		)
	)
)
