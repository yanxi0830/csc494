(define (problem p01)
	
  (:domain recycling)

  (:objects 
  	glass1 glass2 glass3 - glass
  	paper1 paper2 - paper
  	bin1 bin2 bin3 bin4 bin5 - bin
  	gc - glass-container
  	pc - paper-container
  )

  (:init 
  	(in glass1 bin1)
  	(in glass2 bin2)
  	(in glass3 bin3)
  	(in paper1 bin4)
  	(in paper2 bin5)
  	(not (empty bin1))
  	(not (empty bin2))
  	(not (empty bin3))
  	(not (empty bin4))
  	(not (empty bin5))
  	(at bin1)
  ) 

  (:goal
  	(and
  		(in glass1 gc)
  		(in glass2 gc)
  		(in glass3 gc)
  		(in paper1 pc)
  		(in paper2 pc)
  		(empty bin1)
  		(empty bin2)
  		(empty bin3)
  		(empty bin4)
  		(empty bin5))
  ))
