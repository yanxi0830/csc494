(define (problem recycling-n4)
	(:domain recycling)
	(:objects
		glass-1 - glass
		paper-1 paper-2 paper-3 - paper
		bin-1 bin-2 bin-3 bin-4 - bin
		gc - glass-container
		pc - paper-container
	)
	(:init
		(in glass-1 bin-1)
		(not (empty bin-1))
		(in paper-1 bin-2)
		(not (empty bin-2))
		(in paper-2 bin-3)
		(not (empty bin-3))
		(in paper-3 bin-4)
		(not (empty bin-4))
		(at bin-3)
	)
	(:goal (and
		(in glass-1 gc)
		(in paper-1 pc)
		(in paper-2 pc)
		(in paper-3 pc)
		(empty bin-1)
		(empty bin-2)
		(empty bin-3)
		(empty bin-4)
		)
	)
)
