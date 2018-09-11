(define (problem logistics-p5)
	(:domain logistics)
	(:objects
		package-1 package-2 package-3 package-4 package-5 - package
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
	)
	(:goal (and
		(at package-1 house-b)
		(at package-2 house-c)
		(at package-3 house-a)
		(at package-4 house-b)
		(at package-5 house-c)
		)
	)
)
