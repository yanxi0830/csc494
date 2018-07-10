(define (domain map)

  (:requirements 
    :typing
  )

  (:types
    location locatable - object
    robot gps - locatable
  )

  (:predicates
    (at ?obj - locatable ?loc - location)
    (north ?s1 ?s2 - location)  ; s1 is north of s2 (i.e. s1.x == s2.x && s1.y > s2.y)
    (south ?s1 ?s2 - location)
    (east ?s1 ?s2 - location)
    (west ?s1 ?s2 - location)
    (carrying ?r - robot ?g - gps)
    (empty-hand ?r - robot)
    (visited ?g - gps ?loc - location)
  ) 

  (:action move-east-empty
    :parameters (?r - robot ?curr ?next - location)
    :precondition (and 
                    (at ?r ?curr)
                    (east ?next ?curr)
                    (empty-hand ?r)
                    )
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next))
    )

  (:action move-east-with-gps
    :parameters (?r - robot ?g - gps ?curr ?next - location)
    :precondition (and
                    (at ?r ?curr)
                    (east ?next ?curr)
                    (carrying ?r ?g))
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next)
              (visited ?g ?next))
    )

  (:action move-west-empty
    :parameters (?r - robot ?curr ?next - location)
    :precondition (and 
                    (at ?r ?curr)
                    (west ?next ?curr)
                    (empty-hand ?r)
                    )
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next))
    )

  (:action move-west-with-gps
    :parameters (?r - robot ?g - gps ?curr ?next - location)
    :precondition (and
                    (at ?r ?curr)
                    (west ?next ?curr)
                    (carrying ?r ?g))
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next)
              (visited ?g ?next))
    )

  (:action move-south-empty
    :parameters (?r - robot ?curr ?next - location)
    :precondition (and 
                    (at ?r ?curr)
                    (south ?next ?curr)
                    (empty-hand ?r)
                    )
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next))
    )

  (:action move-south-with-gps
    :parameters (?r - robot ?g - gps ?curr ?next - location)
    :precondition (and
                    (at ?r ?curr)
                    (south ?next ?curr)
                    (carrying ?r ?g))
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next)
              (visited ?g ?next))
    )

  (:action move-north-empty
    :parameters (?r - robot ?curr ?next - location)
    :precondition (and 
                    (at ?r ?curr)
                    (north ?next ?curr)
                    (empty-hand ?r)
                    )
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next))
    )

  (:action move-north-with-gps
    :parameters (?r - robot ?g - gps ?curr ?next - location)
    :precondition (and
                    (at ?r ?curr)
                    (north ?next ?curr)
                    (carrying ?r ?g))
    :effect (and
              (not (at ?r ?curr))
              (at ?r ?next)
              (visited ?g ?next))
    )

  (:action pick-up
    :parameters (?r - robot ?g - gps ?l - location)
    :precondition (and
                    (at ?r ?l)
                    (at ?g ?l)
                    (empty-hand ?r))
    :effect (and
              (not (at ?g ?l))
              (carrying ?r ?g)
              (not (empty-hand ?r)))
    )

  (:action put-down
    :parameters (?r - robot ?g - gps ?l - location)
    :precondition (and
                    (at ?r ?l)
                    (carrying ?r ?g))
    :effect (and
              (at ?g ?l)
              (not (carrying ?r ?g))
              (empty-hand ?r))
    )
)