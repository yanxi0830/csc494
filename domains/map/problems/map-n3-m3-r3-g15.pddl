(define (problem map-n3-m3-r3-g15)
	(:domain map)
	(:objects
		square-x0-y0 square-x0-y1 square-x0-y2 square-x1-y0 square-x1-y1 square-x1-y2 square-x2-y0 square-x2-y1 square-x2-y2 - location
		robot-1 robot-2 robot-3 - robot
		gps-1 gps-2 gps-3 gps-4 gps-5 gps-6 gps-7 gps-8 gps-9 gps-10 gps-11 gps-12 gps-13 gps-14 gps-15 - gps
	)
	(:init
		(south square-x0-y0 square-x0-y1)
		(west square-x0-y0 square-x1-y0)
		(south square-x0-y1 square-x0-y2)
		(north square-x0-y1 square-x0-y0)
		(west square-x0-y1 square-x1-y1)
		(north square-x0-y2 square-x0-y1)
		(west square-x0-y2 square-x1-y2)
		(south square-x1-y0 square-x1-y1)
		(west square-x1-y0 square-x2-y0)
		(east square-x1-y0 square-x0-y0)
		(south square-x1-y1 square-x1-y2)
		(north square-x1-y1 square-x1-y0)
		(west square-x1-y1 square-x2-y1)
		(east square-x1-y1 square-x0-y1)
		(north square-x1-y2 square-x1-y1)
		(west square-x1-y2 square-x2-y2)
		(east square-x1-y2 square-x0-y2)
		(south square-x2-y0 square-x2-y1)
		(east square-x2-y0 square-x1-y0)
		(south square-x2-y1 square-x2-y2)
		(north square-x2-y1 square-x2-y0)
		(east square-x2-y1 square-x1-y1)
		(north square-x2-y2 square-x2-y1)
		(east square-x2-y2 square-x1-y2)
		(at robot-1 square-x0-y0)
		(empty-hand robot-1)
		(at robot-2 square-x0-y0)
		(empty-hand robot-2)
		(at robot-3 square-x0-y0)
		(empty-hand robot-3)
		(at gps-1 square-x2-y2)
		(visited gps-1 square-x2-y2)
		(at gps-2 square-x2-y2)
		(visited gps-2 square-x2-y2)
		(at gps-3 square-x2-y2)
		(visited gps-3 square-x2-y2)
		(at gps-4 square-x2-y2)
		(visited gps-4 square-x2-y2)
		(at gps-5 square-x2-y2)
		(visited gps-5 square-x2-y2)
		(at gps-6 square-x2-y2)
		(visited gps-6 square-x2-y2)
		(at gps-7 square-x2-y2)
		(visited gps-7 square-x2-y2)
		(at gps-8 square-x2-y2)
		(visited gps-8 square-x2-y2)
		(at gps-9 square-x2-y2)
		(visited gps-9 square-x2-y2)
		(at gps-10 square-x2-y2)
		(visited gps-10 square-x2-y2)
		(at gps-11 square-x2-y2)
		(visited gps-11 square-x2-y2)
		(at gps-12 square-x2-y2)
		(visited gps-12 square-x2-y2)
		(at gps-13 square-x2-y2)
		(visited gps-13 square-x2-y2)
		(at gps-14 square-x2-y2)
		(visited gps-14 square-x2-y2)
		(at gps-15 square-x2-y2)
		(visited gps-15 square-x2-y2)
	)
	(:goal (and
		(visited gps-1 square-x0-y0)
		(visited gps-1 square-x0-y1)
		(visited gps-1 square-x0-y2)
		(visited gps-1 square-x1-y0)
		(visited gps-1 square-x1-y1)
		(visited gps-1 square-x1-y2)
		(visited gps-1 square-x2-y0)
		(visited gps-1 square-x2-y1)
		(visited gps-1 square-x2-y2)
		(visited gps-2 square-x0-y0)
		(visited gps-2 square-x0-y1)
		(visited gps-2 square-x0-y2)
		(visited gps-2 square-x1-y0)
		(visited gps-2 square-x1-y1)
		(visited gps-2 square-x1-y2)
		(visited gps-2 square-x2-y0)
		(visited gps-2 square-x2-y1)
		(visited gps-2 square-x2-y2)
		(visited gps-3 square-x0-y0)
		(visited gps-3 square-x0-y1)
		(visited gps-3 square-x0-y2)
		(visited gps-3 square-x1-y0)
		(visited gps-3 square-x1-y1)
		(visited gps-3 square-x1-y2)
		(visited gps-3 square-x2-y0)
		(visited gps-3 square-x2-y1)
		(visited gps-3 square-x2-y2)
		(visited gps-4 square-x0-y0)
		(visited gps-4 square-x0-y1)
		(visited gps-4 square-x0-y2)
		(visited gps-4 square-x1-y0)
		(visited gps-4 square-x1-y1)
		(visited gps-4 square-x1-y2)
		(visited gps-4 square-x2-y0)
		(visited gps-4 square-x2-y1)
		(visited gps-4 square-x2-y2)
		(visited gps-5 square-x0-y0)
		(visited gps-5 square-x0-y1)
		(visited gps-5 square-x0-y2)
		(visited gps-5 square-x1-y0)
		(visited gps-5 square-x1-y1)
		(visited gps-5 square-x1-y2)
		(visited gps-5 square-x2-y0)
		(visited gps-5 square-x2-y1)
		(visited gps-5 square-x2-y2)
		(visited gps-6 square-x0-y0)
		(visited gps-6 square-x0-y1)
		(visited gps-6 square-x0-y2)
		(visited gps-6 square-x1-y0)
		(visited gps-6 square-x1-y1)
		(visited gps-6 square-x1-y2)
		(visited gps-6 square-x2-y0)
		(visited gps-6 square-x2-y1)
		(visited gps-6 square-x2-y2)
		(visited gps-7 square-x0-y0)
		(visited gps-7 square-x0-y1)
		(visited gps-7 square-x0-y2)
		(visited gps-7 square-x1-y0)
		(visited gps-7 square-x1-y1)
		(visited gps-7 square-x1-y2)
		(visited gps-7 square-x2-y0)
		(visited gps-7 square-x2-y1)
		(visited gps-7 square-x2-y2)
		(visited gps-8 square-x0-y0)
		(visited gps-8 square-x0-y1)
		(visited gps-8 square-x0-y2)
		(visited gps-8 square-x1-y0)
		(visited gps-8 square-x1-y1)
		(visited gps-8 square-x1-y2)
		(visited gps-8 square-x2-y0)
		(visited gps-8 square-x2-y1)
		(visited gps-8 square-x2-y2)
		(visited gps-9 square-x0-y0)
		(visited gps-9 square-x0-y1)
		(visited gps-9 square-x0-y2)
		(visited gps-9 square-x1-y0)
		(visited gps-9 square-x1-y1)
		(visited gps-9 square-x1-y2)
		(visited gps-9 square-x2-y0)
		(visited gps-9 square-x2-y1)
		(visited gps-9 square-x2-y2)
		(visited gps-10 square-x0-y0)
		(visited gps-10 square-x0-y1)
		(visited gps-10 square-x0-y2)
		(visited gps-10 square-x1-y0)
		(visited gps-10 square-x1-y1)
		(visited gps-10 square-x1-y2)
		(visited gps-10 square-x2-y0)
		(visited gps-10 square-x2-y1)
		(visited gps-10 square-x2-y2)
		(visited gps-11 square-x0-y0)
		(visited gps-11 square-x0-y1)
		(visited gps-11 square-x0-y2)
		(visited gps-11 square-x1-y0)
		(visited gps-11 square-x1-y1)
		(visited gps-11 square-x1-y2)
		(visited gps-11 square-x2-y0)
		(visited gps-11 square-x2-y1)
		(visited gps-11 square-x2-y2)
		(visited gps-12 square-x0-y0)
		(visited gps-12 square-x0-y1)
		(visited gps-12 square-x0-y2)
		(visited gps-12 square-x1-y0)
		(visited gps-12 square-x1-y1)
		(visited gps-12 square-x1-y2)
		(visited gps-12 square-x2-y0)
		(visited gps-12 square-x2-y1)
		(visited gps-12 square-x2-y2)
		(visited gps-13 square-x0-y0)
		(visited gps-13 square-x0-y1)
		(visited gps-13 square-x0-y2)
		(visited gps-13 square-x1-y0)
		(visited gps-13 square-x1-y1)
		(visited gps-13 square-x1-y2)
		(visited gps-13 square-x2-y0)
		(visited gps-13 square-x2-y1)
		(visited gps-13 square-x2-y2)
		(visited gps-14 square-x0-y0)
		(visited gps-14 square-x0-y1)
		(visited gps-14 square-x0-y2)
		(visited gps-14 square-x1-y0)
		(visited gps-14 square-x1-y1)
		(visited gps-14 square-x1-y2)
		(visited gps-14 square-x2-y0)
		(visited gps-14 square-x2-y1)
		(visited gps-14 square-x2-y2)
		(visited gps-15 square-x0-y0)
		(visited gps-15 square-x0-y1)
		(visited gps-15 square-x0-y2)
		(visited gps-15 square-x1-y0)
		(visited gps-15 square-x1-y1)
		(visited gps-15 square-x1-y2)
		(visited gps-15 square-x2-y0)
		(visited gps-15 square-x2-y1)
		(visited gps-15 square-x2-y2)
		)
	)
)
