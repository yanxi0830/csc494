(define (problem map-n2-m2)
	(:domain map)
	(:objects
		square-x0-y0 square-x0-y1 square-x1-y0 square-x1-y1 - location
		robot-1 robot-2 - robot
		gps-1 gps-2 - gps
	)
	(:init
		; Initial robot and GPS states
		(at robot-1 square-x0-y0)
		(at robot-2 square-x0-y0)
		(empty-hand robot-1)
		(empty-hand robot-2)
		
		(at gps-1 square-x1-y1)
		(at gps-2 square-x1-y1)

		(visited gps-1 square-x1-y1)
		(visited gps-2 square-x1-y1)

		(south square-x0-y0 square-x0-y1)
		(west square-x0-y0 square-x1-y0)
		(north square-x0-y1 square-x0-y0)
		(west square-x0-y1 square-x1-y1)
		(south square-x1-y0 square-x1-y1)
		(east square-x1-y0 square-x0-y0)
		(north square-x1-y1 square-x1-y0)
		(east square-x1-y1 square-x0-y1)
	)
	(:goal (and
		(visited gps-1 square-x0-y0)
		(visited gps-1 square-x0-y1)
		(visited gps-1 square-x1-y0)
		(visited gps-1 square-x1-y1)

		(visited gps-2 square-x0-y0)
		(visited gps-2 square-x0-y1)
		(visited gps-2 square-x1-y0)
		(visited gps-2 square-x1-y1)
		)
	)
)
