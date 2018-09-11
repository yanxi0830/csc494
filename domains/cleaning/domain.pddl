(define (domain cleaning)

  (:requirements
    :typing
  )

  (:types
    organic plastic paper robot - object
  )

  (:predicates
    (on-ground ?o - object)
    (in-compost-bin ?o - organic)
    (in-paper-bin ?p - paper)
    (in-plastic-bin ?pl - plastic)
    (empty-hand ?r - robot)
    (holding ?r - robot ?o - object)
  )

  (:action pick-up
    :parameters (?r - robot ?o - object)
    :precondition (and (empty-hand ?r) (on-ground ?o))
    :effect (and
              (not (empty-hand ?r))
              (holding ?r ?o)
              (not (on-ground ?o))
              )
    )

  (:action put-to-compost-bin
    :parameters (?r - robot ?o - organic)
    :precondition (and (holding ?r ?o))
    :effect (and
              (empty-hand ?r)
              (not (holding ?r ?o))
              (in-compost-bin ?o)
              )
    )

  (:action put-to-paper-bin
    :parameters (?r - robot ?p - paper)
    :precondition (and (holding ?r ?p))
    :effect (and
              (empty-hand ?r)
              (not (holding ?r ?p))
              (in-paper-bin ?p))
    )

  (:action put-to-plastic-bin
    :parameters (?r - robot ?pl - plastic)
    :precondition (and (holding ?r ?pl))
    :effect (and
              (empty-hand ?r)
              (not (holding ?r ?pl))
              (in-plastic-bin ?pl)
              )
    )
)
