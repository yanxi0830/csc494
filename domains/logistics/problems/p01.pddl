(define (problem p01)
	
  (:domain logistics)

  (:objects 
  	package-1 package-2 package-3 package-4 package-5 package-6
  	city-a city-b city-c
  	truck-a truck-b truck-c
  	plane-1
  	house-a house-b house-c
  	airport-a airport-b airport-c
  	warehouse-a warehouse-b warehouse-c
  )

  (:init 
  	; define types
  	(PACKAGE package-1)
  	(PACKAGE package-2)
  	(PACKAGE package-3)
  	(PACKAGE package-4)
  	(PACKAGE package-5)
  	(PACKAGE package-6)
  	(CITY city-a)
  	(CITY city-b)
  	(CITY city-c)
  	(TRUCK truck-a)
  	(TRUCK truck-b)
  	(TRUCK truck-c)
  	(AIRPLANE plane-1)
  	(LOCATION airport-a)
  	(LOCATION airport-b)
  	(LOCATION airport-c)
  	(LOCATION house-a)
  	(LOCATION house-b)
  	(LOCATION house-c)
  	(LOCATION warehouse-a)
  	(LOCATION warehouse-b)
  	(LOCATION warehouse-c)

  	(AIRPORT airport-a)
  	(AIRPORT airport-b)
  	(AIRPORT airport-c)

  	; define locations in cities
  	(in-city house-a city-a)
  	(in-city house-b city-b)
  	(in-city house-c city-c)
  	(in-city airport-a city-a)
  	(in-city airport-b city-b)
  	(in-city airport-c city-c)
  	(in-city warehouse-a city-a)
  	(in-city warehouse-b city-b)
  	(in-city warehouse-c city-c)

  	; trucks at warehouse, plane at airport
  	(at plane-1 airport-a)
  	(at truck-a warehouse-a)
  	(at truck-b warehouse-b)
  	(at truck-c warehouse-c)

  	; packages at warehouse
  	(at package-1 warehouse-a)
  	(at package-2 warehouse-a)
  	(at package-3 warehouse-b)
  	(at package-4 warehouse-b)
  	(at package-5 warehouse-c)
  	(at package-6 warehouse-c)  	
  ) 

  (:goal
  	(and
  		(at package-1 house-b)
  		(at package-2 house-b)
  		(at package-3 house-c)
  		(at package-4 house-c)
  		(at package-5 house-a)
  		(at package-6 house-a)
  		)
  ))
