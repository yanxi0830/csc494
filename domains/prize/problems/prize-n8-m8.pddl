(define (problem prize-n8-m8)
	(:domain prize)
	(:objects
		square-x0-y0 square-x0-y1 square-x0-y2 square-x0-y3 square-x0-y4 square-x0-y5 square-x0-y6 square-x0-y7 square-x1-y0 square-x1-y1 square-x1-y2 square-x1-y3 square-x1-y4 square-x1-y5 square-x1-y6 square-x1-y7 square-x2-y0 square-x2-y1 square-x2-y2 square-x2-y3 square-x2-y4 square-x2-y5 square-x2-y6 square-x2-y7 square-x3-y0 square-x3-y1 square-x3-y2 square-x3-y3 square-x3-y4 square-x3-y5 square-x3-y6 square-x3-y7 square-x4-y0 square-x4-y1 square-x4-y2 square-x4-y3 square-x4-y4 square-x4-y5 square-x4-y6 square-x4-y7 square-x5-y0 square-x5-y1 square-x5-y2 square-x5-y3 square-x5-y4 square-x5-y5 square-x5-y6 square-x5-y7 square-x6-y0 square-x6-y1 square-x6-y2 square-x6-y3 square-x6-y4 square-x6-y5 square-x6-y6 square-x6-y7 square-x7-y0 square-x7-y1 square-x7-y2 square-x7-y3 square-x7-y4 square-x7-y5 square-x7-y6 square-x7-y7
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
		(south square-x0-y4 square-x0-y5)
		(north square-x0-y4 square-x0-y3)
		(west square-x0-y4 square-x1-y4)
		(south square-x0-y5 square-x0-y6)
		(north square-x0-y5 square-x0-y4)
		(west square-x0-y5 square-x1-y5)
		(south square-x0-y6 square-x0-y7)
		(north square-x0-y6 square-x0-y5)
		(west square-x0-y6 square-x1-y6)
		(north square-x0-y7 square-x0-y6)
		(west square-x0-y7 square-x1-y7)
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
		(south square-x1-y4 square-x1-y5)
		(north square-x1-y4 square-x1-y3)
		(west square-x1-y4 square-x2-y4)
		(east square-x1-y4 square-x0-y4)
		(south square-x1-y5 square-x1-y6)
		(north square-x1-y5 square-x1-y4)
		(west square-x1-y5 square-x2-y5)
		(east square-x1-y5 square-x0-y5)
		(south square-x1-y6 square-x1-y7)
		(north square-x1-y6 square-x1-y5)
		(west square-x1-y6 square-x2-y6)
		(east square-x1-y6 square-x0-y6)
		(north square-x1-y7 square-x1-y6)
		(west square-x1-y7 square-x2-y7)
		(east square-x1-y7 square-x0-y7)
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
		(south square-x2-y4 square-x2-y5)
		(north square-x2-y4 square-x2-y3)
		(west square-x2-y4 square-x3-y4)
		(east square-x2-y4 square-x1-y4)
		(south square-x2-y5 square-x2-y6)
		(north square-x2-y5 square-x2-y4)
		(west square-x2-y5 square-x3-y5)
		(east square-x2-y5 square-x1-y5)
		(south square-x2-y6 square-x2-y7)
		(north square-x2-y6 square-x2-y5)
		(west square-x2-y6 square-x3-y6)
		(east square-x2-y6 square-x1-y6)
		(north square-x2-y7 square-x2-y6)
		(west square-x2-y7 square-x3-y7)
		(east square-x2-y7 square-x1-y7)
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
		(south square-x3-y4 square-x3-y5)
		(north square-x3-y4 square-x3-y3)
		(west square-x3-y4 square-x4-y4)
		(east square-x3-y4 square-x2-y4)
		(south square-x3-y5 square-x3-y6)
		(north square-x3-y5 square-x3-y4)
		(west square-x3-y5 square-x4-y5)
		(east square-x3-y5 square-x2-y5)
		(south square-x3-y6 square-x3-y7)
		(north square-x3-y6 square-x3-y5)
		(west square-x3-y6 square-x4-y6)
		(east square-x3-y6 square-x2-y6)
		(north square-x3-y7 square-x3-y6)
		(west square-x3-y7 square-x4-y7)
		(east square-x3-y7 square-x2-y7)
		(south square-x4-y0 square-x4-y1)
		(west square-x4-y0 square-x5-y0)
		(east square-x4-y0 square-x3-y0)
		(south square-x4-y1 square-x4-y2)
		(north square-x4-y1 square-x4-y0)
		(west square-x4-y1 square-x5-y1)
		(east square-x4-y1 square-x3-y1)
		(south square-x4-y2 square-x4-y3)
		(north square-x4-y2 square-x4-y1)
		(west square-x4-y2 square-x5-y2)
		(east square-x4-y2 square-x3-y2)
		(south square-x4-y3 square-x4-y4)
		(north square-x4-y3 square-x4-y2)
		(west square-x4-y3 square-x5-y3)
		(east square-x4-y3 square-x3-y3)
		(south square-x4-y4 square-x4-y5)
		(north square-x4-y4 square-x4-y3)
		(west square-x4-y4 square-x5-y4)
		(east square-x4-y4 square-x3-y4)
		(south square-x4-y5 square-x4-y6)
		(north square-x4-y5 square-x4-y4)
		(west square-x4-y5 square-x5-y5)
		(east square-x4-y5 square-x3-y5)
		(south square-x4-y6 square-x4-y7)
		(north square-x4-y6 square-x4-y5)
		(west square-x4-y6 square-x5-y6)
		(east square-x4-y6 square-x3-y6)
		(north square-x4-y7 square-x4-y6)
		(west square-x4-y7 square-x5-y7)
		(east square-x4-y7 square-x3-y7)
		(south square-x5-y0 square-x5-y1)
		(west square-x5-y0 square-x6-y0)
		(east square-x5-y0 square-x4-y0)
		(south square-x5-y1 square-x5-y2)
		(north square-x5-y1 square-x5-y0)
		(west square-x5-y1 square-x6-y1)
		(east square-x5-y1 square-x4-y1)
		(south square-x5-y2 square-x5-y3)
		(north square-x5-y2 square-x5-y1)
		(west square-x5-y2 square-x6-y2)
		(east square-x5-y2 square-x4-y2)
		(south square-x5-y3 square-x5-y4)
		(north square-x5-y3 square-x5-y2)
		(west square-x5-y3 square-x6-y3)
		(east square-x5-y3 square-x4-y3)
		(south square-x5-y4 square-x5-y5)
		(north square-x5-y4 square-x5-y3)
		(west square-x5-y4 square-x6-y4)
		(east square-x5-y4 square-x4-y4)
		(south square-x5-y5 square-x5-y6)
		(north square-x5-y5 square-x5-y4)
		(west square-x5-y5 square-x6-y5)
		(east square-x5-y5 square-x4-y5)
		(south square-x5-y6 square-x5-y7)
		(north square-x5-y6 square-x5-y5)
		(west square-x5-y6 square-x6-y6)
		(east square-x5-y6 square-x4-y6)
		(north square-x5-y7 square-x5-y6)
		(west square-x5-y7 square-x6-y7)
		(east square-x5-y7 square-x4-y7)
		(south square-x6-y0 square-x6-y1)
		(west square-x6-y0 square-x7-y0)
		(east square-x6-y0 square-x5-y0)
		(south square-x6-y1 square-x6-y2)
		(north square-x6-y1 square-x6-y0)
		(west square-x6-y1 square-x7-y1)
		(east square-x6-y1 square-x5-y1)
		(south square-x6-y2 square-x6-y3)
		(north square-x6-y2 square-x6-y1)
		(west square-x6-y2 square-x7-y2)
		(east square-x6-y2 square-x5-y2)
		(south square-x6-y3 square-x6-y4)
		(north square-x6-y3 square-x6-y2)
		(west square-x6-y3 square-x7-y3)
		(east square-x6-y3 square-x5-y3)
		(south square-x6-y4 square-x6-y5)
		(north square-x6-y4 square-x6-y3)
		(west square-x6-y4 square-x7-y4)
		(east square-x6-y4 square-x5-y4)
		(south square-x6-y5 square-x6-y6)
		(north square-x6-y5 square-x6-y4)
		(west square-x6-y5 square-x7-y5)
		(east square-x6-y5 square-x5-y5)
		(south square-x6-y6 square-x6-y7)
		(north square-x6-y6 square-x6-y5)
		(west square-x6-y6 square-x7-y6)
		(east square-x6-y6 square-x5-y6)
		(north square-x6-y7 square-x6-y6)
		(west square-x6-y7 square-x7-y7)
		(east square-x6-y7 square-x5-y7)
		(south square-x7-y0 square-x7-y1)
		(east square-x7-y0 square-x6-y0)
		(south square-x7-y1 square-x7-y2)
		(north square-x7-y1 square-x7-y0)
		(east square-x7-y1 square-x6-y1)
		(south square-x7-y2 square-x7-y3)
		(north square-x7-y2 square-x7-y1)
		(east square-x7-y2 square-x6-y2)
		(south square-x7-y3 square-x7-y4)
		(north square-x7-y3 square-x7-y2)
		(east square-x7-y3 square-x6-y3)
		(south square-x7-y4 square-x7-y5)
		(north square-x7-y4 square-x7-y3)
		(east square-x7-y4 square-x6-y4)
		(south square-x7-y5 square-x7-y6)
		(north square-x7-y5 square-x7-y4)
		(east square-x7-y5 square-x6-y5)
		(south square-x7-y6 square-x7-y7)
		(north square-x7-y6 square-x7-y5)
		(east square-x7-y6 square-x6-y6)
		(north square-x7-y7 square-x7-y6)
		(east square-x7-y7 square-x6-y7)
	)
	(:goal (and
		(visited square-x0-y0)
		(visited square-x0-y1)
		(visited square-x0-y2)
		(visited square-x0-y3)
		(visited square-x0-y4)
		(visited square-x0-y5)
		(visited square-x0-y6)
		(visited square-x0-y7)
		(visited square-x1-y0)
		(visited square-x1-y1)
		(visited square-x1-y2)
		(visited square-x1-y3)
		(visited square-x1-y4)
		(visited square-x1-y5)
		(visited square-x1-y6)
		(visited square-x1-y7)
		(visited square-x2-y0)
		(visited square-x2-y1)
		(visited square-x2-y2)
		(visited square-x2-y3)
		(visited square-x2-y4)
		(visited square-x2-y5)
		(visited square-x2-y6)
		(visited square-x2-y7)
		(visited square-x3-y0)
		(visited square-x3-y1)
		(visited square-x3-y2)
		(visited square-x3-y3)
		(visited square-x3-y4)
		(visited square-x3-y5)
		(visited square-x3-y6)
		(visited square-x3-y7)
		(visited square-x4-y0)
		(visited square-x4-y1)
		(visited square-x4-y2)
		(visited square-x4-y3)
		(visited square-x4-y4)
		(visited square-x4-y5)
		(visited square-x4-y6)
		(visited square-x4-y7)
		(visited square-x5-y0)
		(visited square-x5-y1)
		(visited square-x5-y2)
		(visited square-x5-y3)
		(visited square-x5-y4)
		(visited square-x5-y5)
		(visited square-x5-y6)
		(visited square-x5-y7)
		(visited square-x6-y0)
		(visited square-x6-y1)
		(visited square-x6-y2)
		(visited square-x6-y3)
		(visited square-x6-y4)
		(visited square-x6-y5)
		(visited square-x6-y6)
		(visited square-x6-y7)
		(visited square-x7-y0)
		(visited square-x7-y1)
		(visited square-x7-y2)
		(visited square-x7-y3)
		(visited square-x7-y4)
		(visited square-x7-y5)
		(visited square-x7-y6)
		(visited square-x7-y7)
		)
	)
)
