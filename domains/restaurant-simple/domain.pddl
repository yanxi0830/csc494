(define (domain restaurant-simple)

  (:requirements 
    :typing :equality
  )

  (:types
    location customer server food - object
    fries pizza - food
  )

  (:constants
    kitchen bar table - location)

  (:predicates
    (at-kitchen-food ?f - food)
    (at ?s - server ?l - location)

    (holding ?s - server ?f - food)
    (empty-hand ?s)

    (waiting-at ?c - customer ?l - location)
    (ordered-pizza ?c - customer)
    (ordered-fries ?c - customer)

    (served ?c - customer)
    (no-exist ?f - food)
  )

  (:action make-pizza
    :parameters (?p - pizza ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (no-exist ?p)
                    (empty-hand ?s)
                    (not (at-kitchen-food ?p)))
    :effect (and
              (at-kitchen-food ?p)
              (not (no-exist ?p))
              ))

  (:action make-fries
    :parameters (?f - fries ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (no-exist ?f)
                    (empty-hand ?s)
                    (not (at-kitchen-food ?f))
                    )
    :effect (and
              (at-kitchen-food ?f)
              (not (no-exist ?f))
              )
    )

  (:action pickup-food
    :parameters (?f - food ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (at-kitchen-food ?f)
                    (not (no-exist ?f))
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
                    (at ?s ?from)
                    )
    :effect (and
              (not (at ?s ?from))
              (at ?s ?to))
    )

  (:action serve-pizza
    :parameters (?p - pizza ?s - server ?c - customer ?l - location)
    :precondition (and
                    (at ?s ?l)
                    (waiting-at ?c ?l)
                    (ordered-pizza ?c)
                    (not (served ?c))
                    (holding ?s ?p)
                    (not (no-exist ?p))
                    (not (empty-hand ?s))
                    )
    :effect (and
              (served ?c)
              (not (holding ?s ?p))
              (empty-hand ?s))
    )

  (:action serve-fries
    :parameters (?f - fries ?s - server ?c - customer ?l - location)
    :precondition (and
                    (at ?s ?l)
                    (waiting-at ?c ?l)
                    (ordered-fries ?c)
                    (not (served ?c))
                    (holding ?s ?f)
                    (not (no-exist ?p))
                    (not (empty-hand ?s))
                    )
    :effect (and
              (served ?c)
              (not (holding ?s ?f))
              (empty-hand ?s)
              )
    )
)