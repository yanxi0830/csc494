(define (domain driverlog-capacity)

  (:requirements
    :typing
  )

  (:types
    location locatable - object
    truck package driver - locatable
    capacity-number - object
  )

  (:predicates
    (at ?obj - locatable ?loc - location)
    (in ?p - package ?t - truck)
    (driving ?d - driver ?t - truck)
    (road ?l1 ?l2 - location)
    (path ?l1 ?l2 - location)
    (no-driver ?t - truck)
    (capacity ?t - truck ?n - capacity-number)
    (capacity-predecessor ?n1 ?n2 - capacity-number)
  )

  ; Fixed locations
  (:constants L1 L2 L3 D G1 G2 P1 P2 P3 P4 P5 P6 - location)

  (:action load-truck
    :parameters (?p - package ?t - truck ?l - location ?n1 ?n2 - capacity-number)
    :precondition (and
                    (at ?t ?l)
                    (at ?p ?l)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity ?t ?n2)
                    )
    :effect (and
              (not (at ?p ?l))
              (in ?p ?t)
              (capacity ?t ?n1)
              (not (capacity ?t ?n2)))
    )

  (:action unload-truck
    :parameters (?p - package ?t - truck ?l - location ?n1 ?n2 - capacity-number)
    :precondition (and
                    (at ?t ?l)
                    (in ?p ?t)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity ?t ?n1))
    :effect (and
              (not (in ?p ?t))
              (at ?p ?l)
              (capacity ?t ?n2)
              (not (capacity ?t ?n1)))
    )

  (:action board-truck
    :parameters (?d - driver ?t - truck ?l - location)
    :precondition (and
                    (at ?d ?l)
                    (at ?t ?l)
                    (no-driver ?t))
    :effect (and
              (not (no-driver ?t))
              (driving ?d ?t)
              (not (at ?d ?l)))
    )

  (:action disembark-truck
    :parameters (?d - driver ?t - truck ?l - location)
    :precondition (and
                    (at ?t ?l)
                    (driving ?d ?t))
    :effect (and
              (not (driving ?d ?t))
              (at ?d ?l)
              (no-driver ?t))
    )

  (:action drive-truck
    :parameters (?d - driver ?t - truck ?from ?to - location)
    :precondition (and
                    (driving ?d ?t)
                    (at ?t ?from)
                    (road ?from ?to))
    :effect (and
              (not (at ?t ?from))
              (at ?t ?to))
    )

  (:action walk
    :parameters (?d - driver ?from ?to - location)
    :precondition (and
                    (at ?d ?from)
                    (path ?from ?to))
    :effect (and
              (not (at ?d ?from))
              (at ?d ?to))
    )
)
