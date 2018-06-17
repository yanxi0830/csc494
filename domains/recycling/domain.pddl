(define (domain recycling)

  (:requirements 
    :typing :adl
  )

  (:types
    paper glass - object
    bin glass-container paper-container - container
  )

  (:predicates
    (in ?o - object ?c - container)
    (at ?b - bin)
    (empty ?b - bin)
    (holding ?o - object)
  ) 

  (:action move-to-next
    :parameters (?curr ?next - bin)
    :precondition (and (at ?curr) (not (at ?next)) (not (empty ?next)))
    :effect (and (not (at ?curr)) (at ?next)))

  (:action collect-glass
    :parameters (?g - glass ?c - glass-container)
    :precondition (and (holding ?g))
    :effect (and (not (holding ?g)) (in ?g ?c))
    )

  (:action collect-paper
    :parameters (?p - paper ?c - paper-container)
    :precondition (and (holding ?p))
    :effect (and (not (holding ?p)) (in ?p ?c)))

  (:action pick-object
    :parameters (?o - object ?b - bin)
    :precondition (and (at ?b) (not (empty ?b)) (in ?o ?b))
    :effect (and (holding ?o) (empty ?b) (not (in ?o ?b))))

)