(define (domain cleaning)

  (:requirements 
    :typing
  )

  (:types
    book garbage clothes robot - object
  )

  (:predicates
    (on-ground ?o - object)
    (in-shelf ?b - book)
    (in-closet ?c - clothes)
    (in-trash ?g - garbage)
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

  (:action put-to-shelf
    :parameters (?r - robot ?b - book)
    :precondition (and (holding ?r ?b))
    :effect (and
              (empty-hand ?r)
              (not (holding ?r ?b))
              (in-shelf ?b)
              )
    )

  (:action put-to-closet
    :parameters (?r - robot ?c - clothes)
    :precondition (and (holding ?r ?c))
    :effect (and
              (empty-hand ?r)
              (not (holding ?r ?c))
              (in-closet ?c))
    )

  (:action put-to-trash
    :parameters (?r - robot ?g - garbage)
    :precondition (and (holding ?r ?g))
    :effect (and
              (empty-hand ?r)
              (not (holding ?r ?g))
              (in-trash ?g)
              )
    )
)