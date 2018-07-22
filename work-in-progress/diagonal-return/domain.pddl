(define (domain diagonal-return)

  (:predicates
    (north ?s1 ?s2) ; s1 is north of s2
    (south ?s1 ?s2)
    (east ?s1 ?s2)
    (west ?s1 ?s2)
    (at ?s)
    (visited ?s)
  ) 

  (:action move-E
    :parameters (?curr ?next)
    :precondition (and (at ?curr) (east ?next ?curr))
    :effect (and (not (at ?curr)) (at ?next) (visited ?next)))

  (:action move-W
    :parameters (?curr ?next)
    :precondition (and (at ?curr) (west ?next ?curr))
    :effect (and (not (at ?curr)) (at ?next) (visited ?next)))

  (:action move-N
    :parameters (?curr ?next)
    :precondition (and (at ?curr) (north ?next ?curr))
    :effect (and (not (at ?curr)) (at ?next) (visited ?next)))

  (:action move-S
    :parameters (?curr ?next)
    :precondition (and (at ?curr) (south ?next ?curr))
    :effect (and (not (at ?curr)) (at ?next) (visited ?next)))
  
)