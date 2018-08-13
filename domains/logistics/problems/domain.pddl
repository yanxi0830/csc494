(define (domain logistics)

  (:requirements 
    :strips :typing
  )

  (:types
    location city locatable - object
    vehicle package - locatable
    truck airplane - vehicle
    )


  (:predicates
    ; (TRUCK ?truck)
    ; (AIRPLANE ?airplane)
    ; (PACKAGE ?package)
    ; (LOCATION ?location)
    ; (CITY ?city)
    (AIRPORT ?airport - location)

    (at ?object - locatable ?location - location)
    (in ?package - package ?vehicle - vehicle)
    (in-city ?location - location ?city - city)
  ) 

  (:action load-truck
    :parameters (?package - package ?truck - truck ?location - location)
    :precondition (and
                    (at ?truck ?location)
                    (at ?package ?location)
                    )
    :effect (and
              (not (at ?package ?location))
              (in ?package ?truck))
    )

  (:action load-airplane
    :parameters (?package - package ?airplane - airplane ?location - location)
    :precondition (and
                    (at ?package ?location)
                    (at ?airplane ?location)
                    )
    :effect (and
                    (not (at ?package ?location))
                    (in ?package ?airplane)
                    )
    )

  (:action unload-truck
    :parameters (?package - package ?truck - truck  ?location - location)
    :precondition (and
                    (at ?truck ?location)
                    (in ?package ?truck)
                    )
    :effect (and
              (not (in ?package ?truck))
              (at ?package ?location))
    )

  (:action unload-airplane
    :parameters (?package - package ?airplane - airplane ?location - location)
    :precondition (and
                    (at ?airplane ?location)
                    (in ?package ?airplane)
                    )
    :effect (and
              (not (in ?package ?airplane))
              (at ?package ?location))
    )

  (:action drive-truck
    :parameters (?truck - truck ?loc-from - location ?loc-to - location ?city - city)
    :precondition (and
                    (at ?truck ?loc-from)
                    (in-city ?loc-from ?city)
                    (in-city ?loc-to ?city)
                    )
    :effect (and
              (not (at ?truck ?loc-from))
              (at ?truck ?loc-to))
    )

  (:action fly-airplane
    :parameters (?airplane - airplane ?loc-from - location ?loc-to - location)
    :precondition (and
                    (AIRPORT ?loc-from)
                    (AIRPORT ?loc-to)
                    (at ?airplane ?loc-from)
                    )
    :effect (and
              (not (at ?airplane ?loc-from))
              (at ?airplane ?loc-to))
    )
)