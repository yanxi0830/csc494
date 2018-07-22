(define (problem p01)
	
  (:domain diagonal-return)

  (:objects 
  	square-x0-y2 square-x1-y2 square-x2-y2
  	square-x0-y1 square-x1-y1 square-x2-y1
  	square-x0-y0 square-x1-y0 square-x2-y0
  )

  (:init 
  	(south square-x0-y0 square-x0-y1)
  	(south square-x1-y0 square-x1-y1)
  	(south square-x2-y0 square-x2-y1)
  	(south square-x0-y1 square-x0-y2)
  	(south square-x1-y1 square-x1-y2)
  	(south square-x2-y1 square-x2-y2)

  	(north square-x0-y1 square-x0-y0)
  	(north square-x1-y1 square-x1-y0)
  	(north square-x2-y1 square-x2-y0)
  	(north square-x0-y2 square-x0-y1)
  	(north square-x1-y2 square-x1-y1)
  	(north square-x2-y2 square-x2-y1)

  	(east square-x0-y0 square-x1-y0)
  	(east square-x0-y1 square-x1-y1)
  	(east square-x0-y2 square-x1-y2)
  	(east square-x1-y0 square-x2-y0)
  	(east square-x1-y1 square-x2-y1)
  	(east square-x1-y2 square-x2-y2)

  	(west square-x1-y0 square-x0-y0)
  	(west square-x1-y1 square-x0-y1)
  	(west square-x1-y2 square-x0-y2)
  	(west square-x2-y0 square-x1-y0)
  	(west square-x2-y1 square-x1-y1)
  	(west square-x2-y2 square-x1-y2)
  	
  	(at square-x2-y1)
  ) 

  (:goal
  	(and (visited square-x0-y2) (at square-x2-y0))
  ))
