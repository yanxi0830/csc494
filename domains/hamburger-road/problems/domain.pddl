(define (domain hamburger-road)

  (:requirements 
    :typing :adl
  )

  (:types
    location locatable - object
    robot supply plate - locatable
    lettuce buns meat - supply
  )

  (:constants
    L1 L2 L3 L4 L5 - location
    R1 - robot)

  (:predicates
    (at ?x - locatable ?l - location)
    (carry ?r - robot ?x - supply)

    (have-burger ?p - plate)
    (have-buns ?p - plate)
    (have-lettuce ?p - plate)
    (have-meat ?p - plate)

    (empty-hand ?r - robot)
    (road ?location ?location)
  )

  (:action go-to
    :parameters (?r - robot ?from ?to - location)
    :precondition (and
                    (at ?r ?from)
                    (road ?from ?to))
    :effect (and
              (not (at ?r ?from))
              (at ?r ?to))
    )

  (:action get-buns
    :parameters (?r - robot ?b - buns ?loc - location)
    :precondition (and
                    (at ?r ?loc)
                    (at ?b ?loc)
                    (empty-hand ?r))
    :effect (and
              (not (at ?b ?loc))
              (not (empty-hand ?r))
              (carry ?r ?b)
              )
    )

  (:action get-meat
    :parameters (?r - robot ?m - meat ?loc - location)
    :precondition (and
                    (at ?r ?loc)
                    (at ?m ?loc)
                    (empty-hand ?r))
    :effect (and
              (not (at ?m ?loc))
              (not (empty-hand ?r))
              (carry ?r ?m)
              )
    )

  (:action get-lettuce
    :parameters (?r - robot ?l - lettuce ?loc - location)
    :precondition (and
                    (at ?r ?loc)
                    (at ?l ?loc)
                    (empty-hand ?r))
    :effect (and
              (not (at ?l ?loc))
              (not (empty-hand ?r))
              (carry ?r ?l)
              )
    )

  (:action put-buns-on-plate
    :parameters (?r - robot ?b - buns ?p - plate ?l - location)
    :precondition (and
                    (at ?r ?l)
                    (at ?p ?l)
                    (carry ?r ?b)
                    (not (empty-hand ?r))
                    (not (have-buns ?p)))
    :effect (and
              (not (carry ?r ?b))
              (empty-hand ?r)
              (have-buns ?p))
    )

  (:action put-meat-on-plate
    :parameters (?r - robot ?m - meat ?p - plate ?l - location)
    :precondition (and
                    (at ?r ?l)
                    (at ?p ?l)
                    (carry ?r ?m)
                    (not (empty-hand ?r))
                    (not (have-meat ?p)))
    :effect (and
              (not (carry ?r ?m))
              (empty-hand ?r)
              (have-meat ?p))
    )

  (:action put-lettuce-on-plate
    :parameters (?r - robot ?lett - lettuce ?p - plate ?l - location)
    :precondition (and
                    (at ?r ?l)
                    (at ?p ?l)
                    (carry ?r ?lett)
                    (not (empty-hand ?r))
                    (not (have-lettuce ?p)))
    :effect (and
              (not (carry ?r ?lett))
              (empty-hand ?r)
              (have-lettuce ?p))
    )


  (:action make-burger
    :parameters (?r - robot ?p - plate ?l - location)
    :precondition (and
                    (at ?r ?l)
                    (at ?p ?l)
                    (have-buns ?p)
                    (have-meat ?p)
                    (have-lettuce ?p)
                    (not (have-burger ?p))
                    (empty-hand ?r))
    :effect (and
              (have-burger ?p)
              (not (have-buns ?p))
              (not (have-meat ?p))
              (not (have-lettuce ?p)))
    )
)