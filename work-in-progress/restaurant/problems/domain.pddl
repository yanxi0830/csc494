(define (domain restaurant)

  (:requirements 
    :typing :equality
  )

  (:types
    location customer server ingredient food - object
    potato dough toppings cheese - ingredient
    fries pizza - food
  )

  (:constants
    kitchen bar table - location
    )

  (:predicates
    (at-kitchen ?i - ingredient)
    (at-kitchen-food ?f - food)
    (at ?s - server ?l - location)

    (holding ?s - server ?f - food)
    (empty-hand ?s)

    (waiting-at ?c - customer ?l - location)
    (ordered-pizza ?c - customer)
    (ordered-fries ?c - customer)

    (served ?c - customer)

    (no-exist ?f - food)

    (chopped ?p - potato)
  )

  (:action make-pizza
    :parameters (?p - pizza ?d - dough ?t - toppings ?c - cheese ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (at-kitchen ?d)
                    (at-kitchen ?t)
                    (at-kitchen ?c)
                    (no-exist ?p)
                    (empty-hand ?s)
                    )
    :effect (and
              (at-kitchen-food ?p)
              (not (at-kitchen ?d))
              (not (at-kitchen ?t))
              (not (at-kitchen ?c))
              (not (no-exist ?p))
              )
    )

  (:action chop-potato
    :parameters (?p - potato ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (at-kitchen ?p)
                    (not (chopped ?p))
                    (empty-hand ?s)
                    )
    :effect (and
              (chopped ?p))
    )

  (:action make-fries
    :parameters (?f - fries ?p - potato ?s - server)
    :precondition (and
                    (at ?s kitchen)
                    (at-kitchen ?p)
                    (no-exist ?f)
                    (chopped ?p)
                    (empty-hand ?s)
                    )
    :effect (and
              (at-kitchen-food ?f)
              (not (chopped ?p))
              (not (at-kitchen ?p))
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
                    )
    :effect (and
              (served ?c)
              (not (holding ?s ?f))
              (empty-hand ?s)
              )
    )

)