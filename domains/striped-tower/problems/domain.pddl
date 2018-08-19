(define (domain striped-tower)

  (:requirements
    :typing
  )

  (:types block)

  (:predicates
    (BLUE ?b - block)
    (RED ?b - block)
    (on-table ?b - block)
    (on ?b1 ?b2 - block)
    (clear ?b - block)
    (base ?b - block)
    (on-red ?b - block)
    (under-red ?b - block)
    (on-blue ?b - block)
    (under-blue ?b - block)
  )

  (:action put-red-on-blue
    :parameters (?red-b ?blue-b - block)
    :precondition (and
                    (RED ?red-b)
                    (BLUE ?blue-b)
                    (clear ?red-b)
                    (clear ?blue-b))
    :effect (and
              (not (clear ?blue-b))
              (on-blue ?red-b)
              (under-red ?blue-b)
              (on ?red-b ?blue-b)
              )
    )

  (:action put-red-on-red
    :parameters (?red-b1 ?red-b2 - block)
    :precondition (and
                    (RED ?red-b1)
                    (RED ?red-b2)
                    (clear ?red-b1)
                    (clear ?red-b2))
    :effect (and
              (not (clear ?red-b2))
              (on-red ?red-b1)
              (under-red ?red-b2)
              (on ?red-b1 ?red-b2)
              )
    )

  (:action put-blue-on-red
    :parameters (?blue-b ?red-b - block)
    :precondition (and
                    (BLUE ?blue-b)
                    (RED ?red-b)
                    (clear ?red-b)
                    (clear ?blue-b))
    :effect (and
              (not (clear ?red-b))
              (on-red ?blue-b)
              (under-blue ?red-b)
              (on ?blue-b ?red-b)
              )
    )

  (:action put-blue-on-blue
    :parameters (?blue-b1 ?blue-b2 - block)
    :precondition (and
                    (BLUE ?blue-b1)
                    (BLUE ?blue-b2)
                    (clear ?blue-b1)
                    (clear ?blue-b2))
    :effect (and
              (not (clear ?blue-b2))
              (on-blue ?blue-b1)
              (under-blue ?blue-b2)
              (on ?blue-b1 ?blue-b2)
              )
    )

  (:action put-on-table
    :parameters (?b - block ?under-b - block)
    :precondition (and
                    (on ?b ?under-b)
                    (clear ?b))
    :effect (and
              (on-table ?b)
              (clear ?under-b))
    )

)
