(define (problem recycling-n7)
	(:domain recycling)
	(:objects
		glass-1 glass-2 glass-3 glass-4 glass-5 glass-6 - glass
		paper-1 - paper
		bin-1 bin-2 bin-3 bin-4 bin-5 bin-6 bin-7 - bin
		gc - glass-container
		pc - paper-container
	)
	(:init
		(in glass-1 bin-1)
		(not (empty bin-1))
		(in glass-2 bin-2)
		(not (empty bin-2))
		(in glass-3 bin-3)
		(not (empty bin-3))
		(in glass-4 bin-4)
		(not (empty bin-4))
		(in glass-5 bin-5)
		(not (empty bin-5))
		(in glass-6 bin-6)
		(not (empty bin-6))
		(in paper-1 bin-7)
		(not (empty bin-7))
		(at bin-7)
	)
	(:goal (and
		(in glass-1 gc)
		(in glass-2 gc)
		(in glass-3 gc)
		(in glass-4 gc)
		(in glass-5 gc)
		(in glass-6 gc)
		(in paper-1 pc)
		(empty bin-1)
		(empty bin-2)
		(empty bin-3)
		(empty bin-4)
		(empty bin-5)
		(empty bin-6)
		(empty bin-7)
		)
	)
)
