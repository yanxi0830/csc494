(define (domain construction-simple)

  (:requirements 
    :typing :strips
  )

  (:types
    location locatable - object
    truck part worker - locatable
    capacity-number - object
  )

  (:predicates
    (at ?obj - locatable ?loc - location)
    (in-truck ?p - part ?t - truck)
    (driving ?w - worker ?t - truck)
    (no-driver ?t - truck)
    (capacity ?t - truck ?n - capacity-number)
    (capacity-predecessor ?n1 ?n2 - capacity-number)
    (no-assembled ?p - part)
    (assembled ?p - part)
  ) 

  ; fixed location
  ;(:constants warehouse construction-area - location)

  (:action load-truck
    :parameters (?p - part ?t - truck ?l - location ?n1 ?n2 - capacity-number)
    :precondition (and
                    (at ?t ?l)
                    (at ?p ?l)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity ?t ?n2))
    :effect (and
              (not (at ?p ?l))
              (in-truck ?p ?t)
              (capacity ?t ?n1)
              (not (capacity ?t ?n2))
              )
    )

  (:action unload-truck
    :parameters (?p - part ?t - truck ?l - location ?n1 ?n2 - capacity-number)
    :precondition (and
                    (at ?t ?l)
                    (in-truck ?p ?t)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity ?t ?n1)
                    )
    :effect (and
              (not (in-truck ?p ?t))
              (at ?p ?l)
              (capacity ?t ?n2)
              (not (capacity ?t ?n1))
              )
    )

  (:action board-truck
    :parameters (?w - worker ?t - truck ?l - location)
    :precondition (and 
                    (at ?w ?l)
                    (at ?t ?l)
                    (no-driver ?t))
    :effect (and
              (not (no-driver ?t))
              (driving ?w ?t)
              (not (at ?w ?l)))
    )

  (:action disembark-truck
    :parameters (?w - worker ?t - truck ?l - location)
    :precondition (and
                    (at ?t ?l)
                    (driving ?w ?t))
    :effect (and
              (not (driving ?w ?t))
              (at ?w ?l)
              (no-driver ?t))
    )

  (:action drive-truck
    :parameters (?w - worker ?t - truck ?from ?to - location)
    :precondition (and
                    (driving ?w ?t)
                    (at ?t ?from))
    :effect (and
              (not (at ?t ?from))
              (at ?t ?to))
    )

  (:action walk
    :parameters (?w - worker ?from ?to - location)
    :precondition (and
                    (at ?w ?from))
    :effect (and
              (not (at ?w ?from))
              (at ?w ?to))
    )

  (:action assemble-part
    :parameters (?w - worker ?p - part ?l - location)
    :precondition (and
                    (at ?w ?l)
                    (at ?p ?l)
                    (no-assembled ?p)
                    )
    :effect (and
              (not (no-assembled ?p))
              (assembled ?p))
    )
)