(define (domain hamburger-strips)

  (:requirements 
    :strips
  )

  (:predicates
    (ROBOT ?r)
    (LETTUCE ?l)
    (BUNS ?b)
    (MEAT ?m)
    (PLATE ?p)
    (LOCATION ?l)

    (at ?obj ?location)
    (carry ?robot ?supply)

    (no-burger ?plate)
    (have-burger ?plate)

    (no-buns ?plate)
    (have-buns ?plate)

    (no-lettuce ?plate)
    (have-lettuce ?plate)

    (no-meat ?plate)
    (have-meat ?plate)

    (empty-hand ?robot)
  )

  (:action go-to
    :parameters (?robot ?from ?to)
    :precondition (and
                    (ROBOT ?robot)
                    (LOCATION ?from)
                    (LOCATION ?to)
                    (at ?robot ?from))
    :effect (and
              (not (at ?robot ?from))
              (at ?robot ?to)))

  (:action get-buns
    :parameters (?robot ?buns ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (BUNS ?buns)
                    (LOCATION ?loc)
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
    :parameters (?robot ?meat ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (MEAT ?meat)
                    (LOCATION ?loc)
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
    :parameters (?robot ?lettuce ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (LETTUCE ?lettuce)
                    (LOCATION ?loc)
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
    :parameters (?robot ?buns ?plate ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (BUNS ?buns)
                    (PLATE ?plate)
                    (LOCATION ?loc)
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
    :parameters (?robot ?lettuce ?plate ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (LETTUCE ?lettuce)
                    (PLATE ?plate)
                    (LOCATION ?loc)
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
    :parameters (?robot ?meat ?plate ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (MEAT ?meat)
                    (PLATE ?plate)
                    (LOCATION ?loc)
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
    :parameters (?robot ?plate ?loc)
    :precondition (and
                    (ROBOT ?robot)
                    (PLATE ?plate)
                    (LOCATION ?loc)
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