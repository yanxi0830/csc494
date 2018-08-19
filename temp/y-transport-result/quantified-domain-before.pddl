(define (domain y-transport)
(:requirements :typing)
(:types location locatable capacity-number  - object truck package  - locatable monitor server  - package )
(:predicates   (road ?loc1 - location ?loc2 - location)
  (in ?p - package ?t - truck)
  (capacity ?t - truck ?n - capacity-number)
  (capacity-predecessor ?n1 - capacity-number ?n2 - capacity-number)
  (goal ?l - location)
  (no-goal ?l - location)
  (at-truck ?t - truck ?loc - location)
  (at-package ?p - package ?loc - location)
  (at-monitor ?m - monitor ?loc - location)
  (at-server ?s - server ?loc - location)
)
(:action drive
	:parameters (?t - truck ?l1 - location ?l2 - location)
	:precondition (and
	  (at-truck ?t ?l1)
	  (road ?l1 ?l2))

	:effect (and
	  (not (at-truck ?t ?l1))
	  (at-truck ?t ?l2)
))

(:action load
	:parameters (?t - truck ?l - location ?p - package ?n1 - capacity-number ?n2 - capacity-number)
	:precondition (and
	  (at-truck ?t ?l)
	  (at-package ?p ?l)
	  (capacity-predecessor ?n1 ?n2)
	  (capacity ?t ?n2))

	:effect (and
	  (maybe   (not (at-package ?p ?l)))
	  (in ?p ?t)
	  (capacity ?t ?n1)
	  (not (capacity ?t ?n2))
))

(:action unload-not-goal
	:parameters (?t - truck ?l - location ?p - package ?n1 - capacity-number ?n2 - capacity-number)
	:precondition (and
	  (no-goal ?l)
	  (at-truck ?t ?l)
	  (in ?p ?t)
	  (capacity-predecessor ?n1 ?n2)
	  (capacity ?t ?n1))

	:effect (and
	  (maybe   (not (in ?p ?t)))
	  (at-package ?p ?l)
	  (capacity ?t ?n2)
	  (not (capacity ?t ?n1))
))

(:action unload-goal
	:parameters (?t - truck ?l - location ?m - monitor ?s - server ?n1 - capacity-number ?n2 - capacity-number ?n3 - capacity-number)
	:precondition (and
	  (goal ?l)
	  (at-truck ?t ?l)
	  (in ?m ?t)
	  (in ?s ?t)
	  (capacity-predecessor ?n1 ?n2)
	  (capacity-predecessor ?n2 ?n3)
	  (capacity ?t ?n1))

	:effect (and
	  (maybe   (not (in ?m ?t)))
	  (maybe   (not (in ?s ?t)))
	  (at-monitor ?m ?l)
	  (at-server ?s ?l)
	  (capacity ?t ?n3)
	  (not (capacity ?t ?n1))
))

)

