(define (problem driverlog-capacity-d10-t2-p3)
	(:domain driverlog-capacity)
	(:objects
		driver-1 driver-2 driver-3 driver-4 driver-5 driver-6 driver-7 driver-8 driver-9 driver-10 - driver
		truck-1 truck-2 - truck
		package-1 package-2 package-3 - package
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
		(at driver-10 L2)
		(at truck-1 L3)
		(no-driver truck-1)
		(at truck-2 L3)
		(no-driver truck-2)
		(at package-1 L1)
		(at package-2 L1)
		(at package-3 L1)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
		(capacity truck-2 capacity-1)
	)
	(:goal (and
		(at package-1 G1)
		(at package-2 G1)
		(at package-3 G2)
		(at driver-1 D)
		(at driver-2 D)
		(at driver-3 D)
		(at driver-4 D)
		(at driver-5 D)
		(at driver-6 D)
		(at driver-7 D)
		(at driver-8 D)
		(at driver-9 D)
		(at driver-10 D)
		(at truck-1 D)
		(at truck-2 D)
		)
	)
)
