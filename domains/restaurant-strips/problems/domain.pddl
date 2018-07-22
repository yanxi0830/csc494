(define (domain restaurant-strips)

  (:requirements 
    :strips :adl
  )

  (:predicates
    (LOCATION ?l)
    (CUSTOMER ?c)
    (SERVER ?s)

    (POTATO ?po)
    (DOUGH ?d)
    (TOPPINGS ?t)
    (CHEESE ?ch)

    (PIZZA ?pz)
    (FRIES ?f)

    (at ?obj ?loc)

    (holding-pizza ?server ?pizza)
    (holding-fries ?server ?fries)
    (empty-hand ?server)

    (waiting-at ?customer ?loc)
    (served ?customer)

    (ordered-pizza ?customer)
    (ordered-fries ?customer)

    (no-exist-pizza ?pizza)
    (no-exist-fries ?fries)
    (ready-pizza ?pizza)
    (ready-fries ?fries)

    (chopped-potato ?potato)
    (full-potato ?potato)
  ) 

  (:action make-pizza
    :parameters (?pizza ?dough ?toppings ?cheese ?server ?loc)
    :precondition (and
                    (PIZZA ?pizza)
                    (DOUGH ?dough)
                    (TOPPINGS ?toppings)
                    (CHEESE ?cheese)
                    (SERVER ?server)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (at ?dough ?loc)
                    (at ?toppings ?loc)
                    (at ?cheese ?loc)
                    (no-exist-pizza ?pizza)
                    (empty-hand ?server)
                    )
    :effect (and
              (not (at ?dough ?loc))
              (not (at ?toppings ?loc))
              (not (at ?cheese ?loc))
              (not (no-exist-pizza ?pizza))
              (ready-pizza ?pizza)
              (at ?pizza ?loc)
              )
    )

  (:action chop-potato
    :parameters (?potato ?server ?loc)
    :precondition (and
                    (POTATO ?potato)
                    (SERVER ?server)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (at ?potato ?loc)
                    (full-potato ?potato)
                    (empty-hand ?server)
                    )
    :effect (and
              (not (full-potato ?potato))
              (chopped-potato ?potato)
              )
    )

  (:action make-fries
    :parameters (?fries ?potato ?server ?loc)
    :precondition (and
                    (FRIES ?fries)
                    (POTATO ?potato)
                    (SERVER ?server)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (at ?potato ?loc)
                    (chopped-potato ?potato)
                    (no-exist-fries ?fries)
                    (empty-hand ?server)
                    )
    :effect (and
              (not (at ?potato ?loc))
              (not (no-exist-fries ?fries))
              (ready-fries ?fries)
              (at ?fries ?loc)
              )
    )

  (:action pickup-pizza
    :parameters (?pizza ?server ?loc)
    :precondition (and
                    (PIZZA ?pizza)
                    (SERVER ?server)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (at ?pizza ?loc)
                    (ready-pizza ?pizza)
                    (empty-hand ?server)
                    )
    :effect (and
              (not (at ?pizza ?loc))
              (not (empty-hand ?server))
              (holding-pizza ?server ?pizza)
              )
    )

  (:action pickup-fries
    :parameters (?fries ?server ?loc)
    :precondition (and
                    (FRIES ?fries)
                    (SERVER ?server)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (at ?fries ?loc)
                    (ready-fries ?fries)
                    (empty-hand ?server)
                    )
    :effect (and
              (not (at ?fries ?loc))
              (not (empty-hand ?server))
              (holding-fries ?server ?fries)
              )
    )

  (:action go-to
    :parameters (?server ?from ?to)
    :precondition (and
                    (SERVER ?server)
                    (LOCATION ?from)
                    (LOCATION ?to)
                    (at ?server ?from)
                    )
    :effect (and
              (not (at ?server ?from))
              (at ?server ?to))
    )

  (:action serve-pizza
    :parameters (?pizza ?server ?customer ?loc)
    :precondition (and
                    (PIZZA ?pizza)
                    (SERVER ?server)
                    (CUSTOMER ?customer)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (waiting-at ?customer ?loc)
                    (ordered-pizza ?customer)
                    (holding-pizza ?server ?pizza)
                    (ready-pizza ?pizza)
                    )
    :effect (and
              (not (waiting-at ?customer ?loc))
              (not (holding-pizza ?server ?pizza))
              (empty-hand ?server)
              (served ?customer)
              )
    )

  (:action serve-fries
    :parameters (?fries ?server ?customer ?loc)
    :precondition (and
                    (FRIES ?fries)
                    (SERVER ?server)
                    (CUSTOMER ?customer)
                    (LOCATION ?loc)

                    (at ?server ?loc)
                    (waiting-at ?customer ?loc)
                    (ordered-fries ?customer)
                    (holding-fries ?server ?fries)
                    (ready-fries ?fries)
                    )
    :effect (and
              (not (waiting-at ?customer ?loc))
              (not (holding-fries ?server ?fries))
              (empty-hand ?server)
              (served ?customer)
              )
    )
)