(define (domain y-transport)

  (:requirements 
    :typing :adl
  )

  (:types
    location locatable - object
    truck package - locatable
    monitor server - package
    capacity-number - object
  )

  (:constants 
    L1 L2 L3 D - location
    T1 T2 - truck
    )

  (:predicates
    (path ?l1 ?l2 - location)
    (at ?x - locatable ?l - location)
    (in ?x - package ?t - truck)
    (capacity ?t - truck ?n - capacity-number)
    (capacity-predecessor ?n1 ?n2 - capacity-number)
    (goal ?l - location)
  )

  ; drive truck `Ti` to `Li` (possible only along the edges of the Y-shaped transport graph)
  (:action drive
    :parameters (?t - truck ?l1 ?l2 - location)
    :precondition (and 
                    (at ?t ?l1)
                    (or (path ?l1 ?l2) (path ?l2 ?l1)))
    :effect (and
              (not (at ?t ?l1))
              (at ?t ?l2)))

  (:action load
    :parameters (?t - truck ?l - location ?p - package ?n1 ?n2 - capacity-number)
    :precondition (and 
                    (at ?t ?l)
                    (at ?p ?l)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity ?t ?n2))
    :effect (and 
              (not (at ?p ?l))
              (in ?p ?t)
              (capacity ?t ?n1)
              (not (capacity ?t ?n2))))

  (:action unload-not-goal
    :parameters (?t - truck ?l - location ?p - package ?n1 ?n2 - capacity-number)
    :precondition (and 
                    (not (goal ?l))
                    (at ?t ?l)
                    (in ?p ?t)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity ?t ?n1))
    :effect (and
              (not (in ?p ?t))
              (at ?p ?l)
              (capacity ?t ?n2)
              (not (capacity ?t ?n1))
            )
    )

  (:action unload-goal
    :parameters (?t - truck ?l - location ?m - monitor ?s - server ?n1 ?n2 ?n3 - capacity-number)
    :precondition (and
                    (goal ?l)
                    (at ?t ?l)
                    (in ?m ?t)
                    (in ?s ?t)
                    (capacity-predecessor ?n1 ?n2)
                    (capacity-predecessor ?n2 ?n3)
                    (capacity ?t ?n1)
                    )
    :effect (and
              (not (in ?m ?t))
              (not (in ?s ?t))
              (at ?m ?l)
              (at ?s ?l)
              (capacity ?t ?n3)
              (not (capacity ?t ?n1))
              )
    )



)