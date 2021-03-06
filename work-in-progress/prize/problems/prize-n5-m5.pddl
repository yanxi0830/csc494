(define (problem prize-n5-m5)
	(:domain prize)
	(:objects
		square-x0-y0 square-x0-y1 square-x0-y2 square-x0-y3 square-x0-y4 square-x1-y0 square-x1-y1 square-x1-y2 square-x1-y3 square-x1-y4 square-x2-y0 square-x2-y1 square-x2-y2 square-x2-y3 square-x2-y4 square-x3-y0 square-x3-y1 square-x3-y2 square-x3-y3 square-x3-y4 square-x4-y0 square-x4-y1 square-x4-y2 square-x4-y3 square-x4-y4
	)
	(:init
		(at square-x0-y0)
		(visited square-x0-y0)
		(south square-x0-y0 square-x0-y1)
		(west square-x0-y0 square-x1-y0)
		(south square-x0-y1 square-x0-y2)
		(north square-x0-y1 square-x0-y0)
		(west square-x0-y1 square-x1-y1)
		(south square-x0-y2 square-x0-y3)
		(north square-x0-y2 square-x0-y1)
		(west square-x0-y2 square-x1-y2)
		(south square-x0-y3 square-x0-y4)
		(north square-x0-y3 square-x0-y2)
		(west square-x0-y3 square-x1-y3)
		(north square-x0-y4 square-x0-y3)
		(west square-x0-y4 square-x1-y4)
		(south square-x1-y0 square-x1-y1)
		(west square-x1-y0 square-x2-y0)
		(east square-x1-y0 square-x0-y0)
		(south square-x1-y1 square-x1-y2)
		(north square-x1-y1 square-x1-y0)
		(west square-x1-y1 square-x2-y1)
		(east square-x1-y1 square-x0-y1)
		(south square-x1-y2 square-x1-y3)
		(north square-x1-y2 square-x1-y1)
		(west square-x1-y2 square-x2-y2)
		(east square-x1-y2 square-x0-y2)
		(south square-x1-y3 square-x1-y4)
		(north square-x1-y3 square-x1-y2)
		(west square-x1-y3 square-x2-y3)
		(east square-x1-y3 square-x0-y3)
		(north square-x1-y4 square-x1-y3)
		(west square-x1-y4 square-x2-y4)
		(east square-x1-y4 square-x0-y4)
		(south square-x2-y0 square-x2-y1)
		(west square-x2-y0 square-x3-y0)
		(east square-x2-y0 square-x1-y0)
		(south square-x2-y1 square-x2-y2)
		(north square-x2-y1 square-x2-y0)
		(west square-x2-y1 square-x3-y1)
		(east square-x2-y1 square-x1-y1)
		(south square-x2-y2 square-x2-y3)
		(north square-x2-y2 square-x2-y1)
		(west square-x2-y2 square-x3-y2)
		(east square-x2-y2 square-x1-y2)
		(south square-x2-y3 square-x2-y4)
		(north square-x2-y3 square-x2-y2)
		(west square-x2-y3 square-x3-y3)
		(east square-x2-y3 square-x1-y3)
		(north square-x2-y4 square-x2-y3)
		(west square-x2-y4 square-x3-y4)
		(east square-x2-y4 square-x1-y4)
		(south square-x3-y0 square-x3-y1)
		(west square-x3-y0 square-x4-y0)
		(east square-x3-y0 square-x2-y0)
		(south square-x3-y1 square-x3-y2)
		(north square-x3-y1 square-x3-y0)
		(west square-x3-y1 square-x4-y1)
		(east square-x3-y1 square-x2-y1)
		(south square-x3-y2 square-x3-y3)
		(north square-x3-y2 square-x3-y1)
		(west square-x3-y2 square-x4-y2)
		(east square-x3-y2 square-x2-y2)
		(south square-x3-y3 square-x3-y4)
		(north square-x3-y3 square-x3-y2)
		(west square-x3-y3 square-x4-y3)
		(east square-x3-y3 square-x2-y3)
		(north square-x3-y4 square-x3-y3)
		(west square-x3-y4 square-x4-y4)
		(east square-x3-y4 square-x2-y4)
		(south square-x4-y0 square-x4-y1)
		(east square-x4-y0 square-x3-y0)
		(south square-x4-y1 square-x4-y2)
		(north square-x4-y1 square-x4-y0)
		(east square-x4-y1 square-x3-y1)
		(south square-x4-y2 square-x4-y3)
		(north square-x4-y2 square-x4-y1)
		(east square-x4-y2 square-x3-y2)
		(south square-x4-y3 square-x4-y4)
		(north square-x4-y3 square-x4-y2)
		(east square-x4-y3 square-x3-y3)
		(north square-x4-y4 square-x4-y3)
		(east square-x4-y4 square-x3-y4)
	)
	(:goal (and
		(visited square-x0-y0)
		(visited square-x0-y1)
		(visited square-x0-y2)
		(visited square-x0-y3)
		(visited square-x0-y4)
		(visited square-x1-y0)
		(visited square-x1-y1)
		(visited square-x1-y2)
		(visited square-x1-y3)
		(visited square-x1-y4)
		(visited square-x2-y0)
		(visited square-x2-y1)
		(visited square-x2-y2)
		(visited square-x2-y3)
		(visited square-x2-y4)
		(visited square-x3-y0)
		(visited square-x3-y1)
		(visited square-x3-y2)
		(visited square-x3-y3)
		(visited square-x3-y4)
		(visited square-x4-y0)
		(visited square-x4-y1)
		(visited square-x4-y2)
		(visited square-x4-y3)
		(visited square-x4-y4)
		)
	)
)
