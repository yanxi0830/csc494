(define (problem driverlog-capacity-t1-d9-p16)
	(:domain driverlog-capacity)
	(:objects
		driver-1 driver-2 driver-3 driver-4 driver-5 driver-6 driver-7 driver-8 driver-9 - driver
		truck-1 - truck
		package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15 package-16 - package
		capacity-0 capacity-1 - capacity-number
	)
	(:init
		(road L1 L2)
		(road L2 L1)
		(road L1 L3)
		(road L3 L1)
		(road L2 D)
		(road D L2)
		(road L3 D)
		(road D L3)
		(road D G1)
		(road G1 D)
		(road D G2)
		(road G2 D)
		(path P1 L1)
		(path L1 P1)
		(path P1 L2)
		(path L2 P1)
		(path P2 L1)
		(path L1 P2)
		(path P2 L3)
		(path L3 P2)
		(path P3 L2)
		(path L2 P3)
		(path P3 D)
		(path D P3)
		(path P4 L3)
		(path L3 P4)
		(path P4 D)
		(path D P4)
		(path P5 D)
		(path D P5)
		(path P5 G1)
		(path G1 P5)
		(path P6 D)
		(path D P6)
		(path P6 G2)
		(path G2 P6)
		(at driver-1 L2)
		(at driver-2 L2)
		(at driver-3 L2)
		(at driver-4 L2)
		(at driver-5 L2)
		(at driver-6 L2)
		(at driver-7 L2)
		(at driver-8 L2)
		(at driver-9 L2)
		(at truck-1 L3)
		(no-driver truck-1)
		(at package-1 L1)
		(at package-2 L1)
		(at package-3 L1)
		(at package-4 L1)
		(at package-5 L1)
		(at package-6 L1)
		(at package-7 L1)
		(at package-8 L1)
		(at package-9 L1)
		(at package-10 L1)
		(at package-11 L1)
		(at package-12 L1)
		(at package-13 L1)
		(at package-14 L1)
		(at package-15 L1)
		(at package-16 L1)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
	)
	(:goal (and
		(at package-1 G2)
		(at package-2 G1)
		(at package-3 G2)
		(at package-4 G2)
		(at package-5 G1)
		(at package-6 G1)
		(at package-7 G1)
		(at package-8 G2)
		(at package-9 G2)
		(at package-10 G1)
		(at package-11 G1)
		(at package-12 G2)
		(at package-13 G2)
		(at package-14 G2)
		(at package-15 G2)
		(at package-16 G2)
		(at driver-1 D)
		(at driver-2 D)
		(at driver-3 D)
		(at driver-4 D)
		(at driver-5 D)
		(at driver-6 D)
		(at driver-7 D)
		(at driver-8 D)
		(at driver-9 D)
		(at truck-1 D)
		)
	)
)
