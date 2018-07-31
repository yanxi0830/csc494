(define (problem logistics-p15)
	(:domain logistics)
	(:objects
		package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15
		city-a city-b city-c
		truck-a truck-b truck-c
		plane-1 plane-2 plane-3
		house-a house-b house-c
		airport-a airport-b airport-c
		warehouse-a warehouse-b warehouse-c
	)
	(:init
		(PACKAGE package-1)
		(PACKAGE package-2)
		(PACKAGE package-3)
		(PACKAGE package-4)
		(PACKAGE package-5)
		(PACKAGE package-6)
		(PACKAGE package-7)
		(PACKAGE package-8)
		(PACKAGE package-9)
		(PACKAGE package-10)
		(PACKAGE package-11)
		(PACKAGE package-12)
		(PACKAGE package-13)
		(PACKAGE package-14)
		(PACKAGE package-15)
		(CITY city-a)
		(CITY city-b)
		(CITY city-c)
		(TRUCK truck-a)
		(TRUCK truck-b)
		(TRUCK truck-c)
		(AIRPLANE plane-1)
		(AIRPLANE plane-2)
		(AIRPLANE plane-3)
		(LOCATION house-a)
		(LOCATION house-b)
		(LOCATION house-c)
		(LOCATION airport-a)
		(LOCATION airport-b)
		(LOCATION airport-c)
		(LOCATION warehouse-a)
		(LOCATION warehouse-b)
		(LOCATION warehouse-c)
		(AIRPORT airport-a)
		(AIRPORT airport-b)
		(AIRPORT airport-c)
		(in-city house-a city-a)
		(in-city airport-a city-a)
		(in-city warehouse-a city-a)
		(at plane-1 airport-a)
		(at truck-a warehouse-a)
		(in-city house-b city-b)
		(in-city airport-b city-b)
		(in-city warehouse-b city-b)
		(at plane-2 airport-b)
		(at truck-b warehouse-b)
		(in-city house-c city-c)
		(in-city airport-c city-c)
		(in-city warehouse-c city-c)
		(at plane-3 airport-c)
		(at truck-c warehouse-c)
		(at package-1 warehouse-a)
		(at package-2 warehouse-b)
		(at package-3 warehouse-c)
		(at package-4 warehouse-a)
		(at package-5 warehouse-b)
		(at package-6 warehouse-c)
		(at package-7 warehouse-a)
		(at package-8 warehouse-b)
		(at package-9 warehouse-c)
		(at package-10 warehouse-a)
		(at package-11 warehouse-b)
		(at package-12 warehouse-c)
		(at package-13 warehouse-a)
		(at package-14 warehouse-b)
		(at package-15 warehouse-c)
	)
	(:goal (and
		(at package-1 house-b)
		(at package-2 house-a)
		(at package-3 house-c)
		(at package-4 house-b)
		(at package-5 house-a)
		(at package-6 house-c)
		(at package-7 house-b)
		(at package-8 house-a)
		(at package-9 house-c)
		(at package-10 house-b)
		(at package-11 house-a)
		(at package-12 house-c)
		(at package-13 house-b)
		(at package-14 house-a)
		(at package-15 house-c)
		)
	)
)
