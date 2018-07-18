(define (domain restaurant-simple)

  (:requirements 
    :typing :equality
  )

  (:types
    location customer server food - object
    fries pizza - food
  )

  (:constants
    kitchen bar table - location
    )

  (:predicates
    (at-kitchen-food ?f - food)

    (at ?s - server ?l - location)
    (holding ?s - server ?f - food)
    (empty-hand ?s)

    (waiting-at ?c - customer ?l - location)
    (ordered-pizza ?c - customer)
    (ordered-fries ?c - customer)

    (served ?c - customer)
    )

  (:action pickup-food
    :parameters (?f - food ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (at-kitchen-food ?f)
                    (empty-hand ?s)
                    )
    :effect (and
              (not (at-kitchen-food ?f))
              (not (empty-hand ?s))
              (holding ?s ?f)
              )
    )

  (:action go-to
    :parameters (?s - server ?from ?to - location)
    :precondition (and
                    (at ?s ?from))
    :effect (and
              (not (at ?s ?from))
              (at ?s ?to))
    )

  (:action serve-pizza
    :parameters (?p - pizza ?s - server ?l - location ?c - customer)
    :precondition (and
                    (at ?s ?l)
                    (waiting-at ?c ?l)
                    (ordered-pizza ?c)
                    (not (served ?c))
                    (holding ?s ?p)
                    (not (empty-hand ?s))
                    (not (at-kitchen-food ?p))
                    )
    :effect (and
              (not (waiting-at ?c ?l))
              (not (ordered-pizza ?c))
              (served ?c)
              (not (holding ?s ?p))
              (empty-hand ?s)
              )
    )

  (:action serve-fries
    :parameters (?f - fries ?s - server ?l - location ?c - customer)
    :precondition (and
                    (at ?s ?l)
                    (waiting-at ?c ?l)
                    (ordered-fries ?c)
                    (not (served ?c))
                    (holding ?s ?f)
                    (not (empty-hand ?s))
                    (not (at-kitchen-food ?f)))
    :effect (and
              (not (waiting-at ?c ?l))
              (not (ordered-fries ?c))
              (served ?c)
              (not (holding ?s ?f))
              (empty-hand ?s)
              )
    )
)