(define (problem logistics-p20)
	(:domain logistics)
	(:objects
		package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15 package-16 package-17 package-18 package-19 package-20 - package
		city-a city-b city-c - city
		truck-a truck-b truck-c - truck
		plane-1 plane-2 plane-3 - airplane
		house-a house-b house-c - location
		airport-a airport-b airport-c - location
		warehouse-a warehouse-b warehouse-c - location
	)
	(:init
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
		(at package-16 warehouse-a)
		(at package-17 warehouse-b)
		(at package-18 warehouse-c)
		(at package-19 warehouse-a)
		(at package-20 warehouse-b)
	)
	(:goal (and
		(at package-1 house-b)
		(at package-2 house-c)
		(at package-3 house-a)
		(at package-4 house-b)
		(at package-5 house-c)
		(at package-6 house-a)
		(at package-7 house-b)
		(at package-8 house-c)
		(at package-9 house-a)
		(at package-10 house-b)
		(at package-11 house-c)
		(at package-12 house-a)
		(at package-13 house-b)
		(at package-14 house-c)
		(at package-15 house-a)
		(at package-16 house-b)
		(at package-17 house-c)
		(at package-18 house-a)
		(at package-19 house-b)
		(at package-20 house-c)
		)
	)
)
