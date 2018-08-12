(define (domain roundabout)

  (:requirements 
    :typing
  )

  (:types
    vehicle road sector - object
  )

  (:predicates
    (is-enter-road ?r - road) ; road in the direction of entering the roundabout
    (is-exit-road ?r - road)
    (before ?s - sector ?r - road)
    (after ?s - sector ?r - road)
    (in-roundabout ?v - vehicle)
    (at-sector ?v - vehicle ?s - sector)
    (at-road ?v - vehicle ?r - road)
    (free ?s - sector)
    (next-sector ?s-at ?s-next - sector)
  ) 

  (:action enter
    :parameters (?v - vehicle ?r - road ?s-before ?s-after - sector)
    :precondition (and
                    (is-enter-road ?r)
                    (at-road ?v ?r)
                    (before ?s-before ?r)
                    (after ?s-after ?r)
                    (free ?s-before)
                    (free ?s-after)
                    )
    :effect (and
              (not (at-road ?v ?r))
              (not (free ?s-after))
              (in-roundabout ?v)
              (at-sector ?v ?s-after)
              )
    )

  (:action drive
    :parameters (?v - vehicle ?s-from ?s-to - sector)
    :precondition (and
                    (in-roundabout ?v)
                    (at-sector ?v ?s-from)
                    (next-sector ?s-from ?s-to)
                    (free ?s-to)
                    )
    :effect (and
              (not (at-sector ?v ?s-from))
              (not (free ?s-to))
              (free ?s-from)
              (at-sector ?v ?s-to)
              )
    )

  (:action exit
    :parameters (?v - vehicle ?s-at - sector ?r - road)
    :precondition (and
                    (in-roundabout ?v)
                    (at-sector ?v ?s-at)
                    (before ?s-at ?r)
                    (is-exit-road ?r)
                    )
    :effect (and
              (not (in-roundabout ?v))
              (not (at-sector ?v ?s-at))
              (free ?s-at)
              (at-road ?v ?r)
              )
    )
)