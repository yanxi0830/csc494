(define (domain hamburger)

  (:requirements 
    :strips :typing
  )

  (:types 
    location locatable - object
    robot supply plate - locatable
    lettuce buns meat - supply
    )

  (:predicates
    (at ?obj - locatable ?location - location)
    (carry ?robot - robot ?supply - supply)

    (no-burger ?plate - plate)
    (have-burger ?plate - plate)

    (no-buns ?plate - plate)
    (have-buns ?plate - plate)

    (no-lettuce ?plate - plate)
    (have-lettuce ?plate - plate)

    (no-meat ?plate - plate)
    (have-meat ?plate - plate)

    (empty-hand ?robot - robot)
  )

  (:action go-to
    :parameters (?robot - robot ?from ?to - location)
    :precondition (and
                    (at ?robot ?from))
    :effect (and
              (not (at ?robot ?from))
              (at ?robot ?to)))

  (:action get-buns
    :parameters (?robot - robot ?buns - buns ?loc - location)
    :precondition (and
                    (at ?buns ?loc)
                    (at ?robot ?loc)
                    (empty-hand ?robot)
                    )
    :effect (and
              (not (at ?buns ?loc))
              (not (empty-hand ?robot))
              (carry ?robot ?buns))
    )

  (:action get-meat
    :parameters (?robot - robot ?meat - meat ?loc - location)
    :precondition (and
                    (at ?meat ?loc)
                    (at ?robot ?loc)
                    (empty-hand ?robot)
                    )
    :effect (and
              (not (at ?meat ?loc))
              (not (empty-hand ?robot))
              (carry ?robot ?meat))
    )

  (:action get-lettuce
    :parameters (?robot - robot ?lettuce - lettuce ?loc - location)
    :precondition (and
                    (at ?lettuce ?loc)
                    (at ?robot ?loc)
                    (empty-hand ?robot)
                    )
    :effect (and
              (not (at ?lettuce ?loc))
              (not (empty-hand ?robot))
              (carry ?robot ?lettuce))
    )

  (:action put-buns-on-plate
    :parameters (?robot - robot ?buns - buns ?plate - plate ?loc - location)
    :precondition (and
                    (at ?robot ?loc)
                    (at ?plate ?loc)
                    (carry ?robot ?buns)
                    (no-buns ?plate)
                    )
    :effect (and
              (not (carry ?robot ?buns))
              (not (no-buns ?plate))
              (empty-hand ?robot)
              (have-buns ?plate))
    )

  (:action put-lettuce-on-plate
    :parameters (?robot - robot ?lettuce - lettuce ?plate - plate ?loc - location)
    :precondition (and
                    (at ?robot ?loc)
                    (at ?plate ?loc)
                    (carry ?robot ?lettuce)
                    (no-lettuce ?plate)
                    )
    :effect (and
              (not (carry ?robot ?lettuce))
              (not (no-lettuce ?plate))
              (empty-hand ?robot)
              (have-lettuce ?plate))
    )

  (:action put-meat-on-plate
    :parameters (?robot - robot ?meat - meat ?plate - plate ?loc - location)
    :precondition (and
                    (at ?robot ?loc)
                    (at ?plate ?loc)
                    (carry ?robot ?meat)
                    (no-meat ?plate)
                    )
    :effect (and
              (not (carry ?robot ?meat))
              (not (no-meat ?plate))
              (empty-hand ?robot)
              (have-meat ?plate))
    )

  (:action make-burger
    :parameters (?robot - robot ?plate - plate ?loc - location)
    :precondition (and
                    (at ?robot ?loc)
                    (at ?plate ?loc)
                    (have-buns ?plate)
                    (have-lettuce ?plate)
                    (have-meat ?plate)
                    (no-burger ?plate)
                    (empty-hand ?robot)
                    )
    :effect (and
              (have-burger ?plate)
              (not (no-burger ?plate))
              )
    )


)