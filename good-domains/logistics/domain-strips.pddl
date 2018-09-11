(define (domain logistics)

  (:requirements 
    :strips
  )

  (:predicates
    (TRUCK ?truck)
    (AIRPLANE ?airplane)
    (PACKAGE ?package)
    (LOCATION ?location)
    (CITY ?city)
    (AIRPORT ?airport)

    (at ?object ?location)
    (in ?package ?vehicle)
    (in-city ?location ?city)
  ) 

  (:action load-truck
    :parameters (?package ?truck ?location)
    :precondition (and
                    (PACKAGE ?package)
                    (TRUCK ?truck)
                    (LOCATION ?location)
                    (at ?truck ?location)
                    (at ?package ?location)
                    )
    :effect (and
              (not (at ?package ?location))
              (in ?package ?truck))
    )

  (:action load-airplane
    :parameters (?package ?airplane ?location)
    :precondition (and
                    (PACKAGE ?package)
                    (AIRPLANE ?airplane)
                    (LOCATION ?location)
                    (at ?package ?location)
                    (at ?airplane ?location)
                    )
    :effect (and
                    (not (at ?package ?location))
                    (in ?package ?airplane)
                    )
    )

  (:action unload-truck
    :parameters (?package ?truck ?location)
    :precondition (and
                    (PACKAGE ?package)
                    (TRUCK ?truck)
                    (LOCATION ?location)
                    (at ?truck ?location)
                    (in ?package ?truck)
                    )
    :effect (and
              (not (in ?package ?truck))
              (at ?package ?location))
    )

  (:action unload-airplane
    :parameters (?package ?airplane ?location)
    :precondition (and
                    (PACKAGE ?package)
                    (AIRPLANE ?airplane)
                    (LOCATION ?location)
                    (at ?airplane ?location)
                    (in ?package ?airplane)
                    )
    :effect (and
              (not (in ?package ?airplane))
              (at ?package ?location))
    )

  (:action drive-truck
    :parameters (?truck ?loc-from ?loc-to ?city)
    :precondition (and
                    (TRUCK ?truck)
                    (LOCATION ?loc-from)
                    (LOCATION ?loc-to)
                    (CITY ?city)
                    (at ?truck ?loc-from)
                    (in-city ?loc-from ?city)
                    (in-city ?loc-to ?city)
                    )
    :effect (and
              (not (at ?truck ?loc-from))
              (at ?truck ?loc-to))
    )

  (:action fly-airplane
    :parameters (?airplane ?loc-from ?loc-to)
    :precondition (and
                    (AIRPLANE ?airplane)
                    (AIRPORT ?loc-from)
                    (AIRPORT ?loc-to)
                    (at ?airplane ?loc-from)
                    )
    :effect (and
              (not (at ?airplane ?loc-from))
              (at ?airplane ?loc-to))
    )
)