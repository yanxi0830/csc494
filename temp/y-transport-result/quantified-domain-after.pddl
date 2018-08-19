(define (domain y-transport)
(:requirements :typing)
(:types location locatable capacity-number  - object truck package  - locatable monitor server  - package )
(:predicates   (road ?loc1 - location ?loc2 - location)
  (at ?obj - locatable ?loc - location)
  (in ?p - package ?t - truck)
  (capacity ?t - truck ?n - capacity-number)
  (capacity-predecessor ?n1 - capacity-number ?n2 - capacity-number)
  (goal ?l - location)
  (no-goal ?l - location)
)
(:action drive
	:parameters (?t - truck ?l1 - location ?l2 - location)
	:precondition (and
	  (at ?t ?l1)
	  (road ?l1 ?l2))

	:effect (and
	  (not (at ?t ?l1))
	  (at ?t ?l2)
))

(:action load
	:parameters (?t - truck ?l - location ?p - package ?n1 - capacity-number ?n2 - capacity-number)
	:precondition (and
	  (at ?t ?l)
	  (at ?p ?l)
	  (capacity-predecessor ?n1 ?n2)
	  (capacity ?t ?n2))

	:effect (and
	  (maybe   (not (at ?p ?l)))
	  (in ?p ?t)
	  (capacity ?t ?n1)
	  (not (capacity ?t ?n2))
))

(:action unload-not-goal
	:parameters (?t - truck ?l - location ?p - package ?n1 - capacity-number ?n2 - capacity-number)
	:precondition (and
	  (no-goal ?l)
	  (at ?t ?l)
	  (in ?p ?t)
	  (capacity-predecessor ?n1 ?n2)
	  (capacity ?t ?n1))

	:effect (and
	  (maybe   (not (in ?p ?t)))
	  (at ?p ?l)
	  (capacity ?t ?n2)
	  (not (capacity ?t ?n1))
))

(:action unload-goal
	:parameters (?t - truck ?l - location ?m - monitor ?s - server ?n1 - capacity-number ?n2 - capacity-number ?n3 - capacity-number)
	:precondition (and
	  (goal ?l)
	  (at ?t ?l)
	  (in ?m ?t)
	  (in ?s ?t)
	  (capacity-predecessor ?n1 ?n2)
	  (capacity-predecessor ?n2 ?n3)
	  (capacity ?t ?n1))

	:effect (and
	  (maybe   (not (in ?m ?t)))
	  (maybe   (not (in ?s ?t)))
	  (at ?m ?l)
	  (at ?s ?l)
	  (capacity ?t ?n3)
	  (not (capacity ?t ?n1))
))

)

