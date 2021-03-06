(define (problem p01)
	
  (:domain prize)

  (:objects 
  	square-x0-y1 square-x1-y1
  	square-x0-y0 square-x1-y0
  )

  (:init 
  	(at square-x0-y0)
  	(visited square-x0-y0)

  	(south square-x0-y0 square-x0-y1)
  	(north square-x0-y1 square-x0-y0)

  	(east square-x0-y0 square-x1-y0)
  	(west square-x1-y0 square-x0-y0)

  	(south square-x1-y0 square-x1-y1)
  	(north square-x1-y1 square-x1-y0)

  	(east square-x0-y1 square-x1-y1)
  	(west square-x1-y1 square-x0-y1)

  ) 

  (:goal
  	(and 
  		(visited square-x0-y0)
  		(visited square-x1-y0)
  		(visited square-x0-y1)
  		(visited square-x1-y1))
  ))
