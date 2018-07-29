(define (domain construction)

  (:requirements 
    :typing :strips :adl
  )

  (:types
    location locatable - object
    truck composite worker part - locatable
    capacity-number - object
  )

  (:predicates
    (at ?obj - locatable ?loc - location)
    (in-truck ?p - part ?t - truck)
    (driving ?w - worker ?t - truck)
    (no-driver ?t - truck)
    (capacity ?t - truck ?n - capacity-number)
    (capacity-predecessor ?n1 ?n2 - capacity-number)

    (no-wood ?c - composite)
    (have-wood ?c - composite)
    (no-glass ?c - composite)
    (have-glass ?c - composite)
    (no-clay ?c - composite)
    (have-clay ?c - composite)

    (WOOD ?p - part)
    (GLASS ?p - part)
    (CLAY ?p - part)

    (no-assembled ?c - composite)
    (assembled ?c - composite)
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

  (:action put-wood-on-comp
    :parameters (?w - worker ?wp - part ?comp - composite ?loc - location)
    :precondition (and
                    (at ?w ?loc)
                    (at ?comp ?loc)
                    (at ?wp ?loc)
                    (no-wood ?comp)
                    (WOOD ?wp)
                    )
    :effect (and
              (not (at ?wp ?loc))
              (not (no-wood ?comp))
              (have-wood ?comp)
              )
    )

  (:action put-glass-on-comp
    :parameters (?w - worker ?gp - part ?comp - composite ?loc - location)
    :precondition (and
                    (at ?w ?loc)
                    (at ?comp ?loc)
                    (at ?gp ?loc)
                    (no-glass ?comp)
                    (GLASS ?gp)
                    )
    :effect (and
              (not (at ?gp ?loc))
              (not (no-glass ?comp))
              (have-glass ?comp)
              )
    )

  (:action put-clay-on-comp
    :parameters (?w - worker ?cp - part ?comp - composite ?loc - location)
    :precondition (and
                    (at ?w ?loc)
                    (at ?comp ?loc)
                    (at ?cp ?loc)
                    (no-clay ?comp)
                    (CLAY ?cp)
                    )
    :effect (and
              (not (at ?cp ?loc))
              (not (no-clay ?comp))
              (have-clay ?comp)
              )
    )

  (:action assemble-parts
    :parameters (?w - worker ?comp - composite ?loc - location)
    :precondition (and
                    (at ?w ?loc)
                    (at ?comp ?loc)
                    (have-wood ?comp)
                    (have-glass ?comp)
                    (have-clay ?comp)
                    (no-assembled ?comp)
                    )
    :effect (and
              (not (no-assembled ?comp))
              (assembled ?comp)
              )
    )

)