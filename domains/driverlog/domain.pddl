(define (domain driverlog)

  (:requirements 
    :strips
  )

  (:predicates
    (PACKAGE ?p)
    (TRUCK ?t)
    (DRIVER ?d)
    (LOCATION ?l)
    (at ?obj ?loc)
    (in ?package ?truck)
    (driving ?driver ?truck)
    (road ?l1 ?l2)
    (path ?l1 ?l2)
    (no-driver ?truck)
  ) 

  (:constants L1 L2 L3 D G1 G2 P1 P2 P3 P4 P5 P6)

  (:action load-truck
    :parameters (?package ?truck ?loc)
    :precondition (and 
                    (PACKAGE ?package)
                    (TRUCK ?truck)
                    (LOCATION ?loc)
                    (at ?truck ?loc)
                    (at ?package ?loc)
                    )
    :effect (and
              (not (at ?package ?loc))
              (in ?package ?truck)))

  (:action unload-truck
    :parameters (?package ?truck ?loc)
    :precondition (and 
                    (PACKAGE ?package)
                    (TRUCK ?truck)
                    (LOCATION ?loc)
                    (at ?truck ?loc)
                    (in ?package ?truck))
    :effect (and 
              (not (in ?package ?truck))
              (at ?package ?loc))
    )

  (:action board-truck
    :parameters (?driver ?truck ?loc)
    :precondition (and 
                    (DRIVER ?driver)
                    (TRUCK ?truck)
                    (LOCATION ?loc)
                    (at ?driver ?loc)
                    (at ?truck ?loc)
                    (no-driver ?truck)
                    )
    :effect (and 
              (not (no-driver ?truck))
              (driving ?driver ?truck)
              (not (at ?driver ?loc)))
    )

  (:action disembark-truck
    :parameters (?driver ?truck ?loc)
    :precondition (and 
                    (DRIVER ?driver)
                    (TRUCK ?truck)
                    (LOCATION ?loc)
                    (at ?truck ?loc)
                    (driving ?driver ?truck)
                    )
    :effect (and 
              (not (driving ?driver ?truck))
              (at ?driver ?loc)
              (no-driver ?truck))
    )

  (:action drive-truck
    :parameters (?driver ?truck ?loc-from ?loc-to)
    :precondition (and
                    (DRIVER ?driver)
                    (TRUCK ?truck)
                    (LOCATION ?loc-from)
                    (LOCATION ?loc-to)
                    (driving ?driver ?truck)
                    (at ?truck ?loc-from)
                    (road ?loc-from ?loc-to)
                    )
    :effect (and 
              (not (at ?truck ?loc-from))
              (at ?truck ?loc-to)
              )
    )

  (:action walk
    :parameters (?driver ?loc-from ?loc-to)
    :precondition (and 
                    (DRIVER ?driver)
                    (LOCATION ?loc-from)
                    (LOCATION ?loc-to)
                    (at ?driver ?loc-from)
                    (path ?loc-from ?loc-to)
                    )
    :effect (and 
              (not (at ?driver ?loc-from))
              (at ?driver ?loc-to))
    )
)