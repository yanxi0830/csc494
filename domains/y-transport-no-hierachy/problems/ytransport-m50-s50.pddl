(define (problem ytransport-m50-s50)
	(:domain y-transport)
	(:objects
		monitor-1 monitor-2 monitor-3 monitor-4 monitor-5 monitor-6 monitor-7 monitor-8 monitor-9 monitor-10 monitor-11 monitor-12 monitor-13 monitor-14 monitor-15 monitor-16 monitor-17 monitor-18 monitor-19 monitor-20 monitor-21 monitor-22 monitor-23 monitor-24 monitor-25 monitor-26 monitor-27 monitor-28 monitor-29 monitor-30 monitor-31 monitor-32 monitor-33 monitor-34 monitor-35 monitor-36 monitor-37 monitor-38 monitor-39 monitor-40 monitor-41 monitor-42 monitor-43 monitor-44 monitor-45 monitor-46 monitor-47 monitor-48 monitor-49 monitor-50 - package
		server-1 server-2 server-3 server-4 server-5 server-6 server-7 server-8 server-9 server-10 server-11 server-12 server-13 server-14 server-15 server-16 server-17 server-18 server-19 server-20 server-21 server-22 server-23 server-24 server-25 server-26 server-27 server-28 server-29 server-30 server-31 server-32 server-33 server-34 server-35 server-36 server-37 server-38 server-39 server-40 server-41 server-42 server-43 server-44 server-45 server-46 server-47 server-48 server-49 server-50 - package
		capacity-0 capacity-1 capacity-2 - capacity-number
	)
	(:init
		(capacity-predecessor capacity-0 capacity-1)
		(capacity-predecessor capacity-1 capacity-2)
		(MONITOR monitor-1)
		(MONITOR monitor-2)
		(MONITOR monitor-3)
		(MONITOR monitor-4)
		(MONITOR monitor-5)
		(MONITOR monitor-6)
		(MONITOR monitor-7)
		(MONITOR monitor-8)
		(MONITOR monitor-9)
		(MONITOR monitor-10)
		(MONITOR monitor-11)
		(MONITOR monitor-12)
		(MONITOR monitor-13)
		(MONITOR monitor-14)
		(MONITOR monitor-15)
		(MONITOR monitor-16)
		(MONITOR monitor-17)
		(MONITOR monitor-18)
		(MONITOR monitor-19)
		(MONITOR monitor-20)
		(MONITOR monitor-21)
		(MONITOR monitor-22)
		(MONITOR monitor-23)
		(MONITOR monitor-24)
		(MONITOR monitor-25)
		(MONITOR monitor-26)
		(MONITOR monitor-27)
		(MONITOR monitor-28)
		(MONITOR monitor-29)
		(MONITOR monitor-30)
		(MONITOR monitor-31)
		(MONITOR monitor-32)
		(MONITOR monitor-33)
		(MONITOR monitor-34)
		(MONITOR monitor-35)
		(MONITOR monitor-36)
		(MONITOR monitor-37)
		(MONITOR monitor-38)
		(MONITOR monitor-39)
		(MONITOR monitor-40)
		(MONITOR monitor-41)
		(MONITOR monitor-42)
		(MONITOR monitor-43)
		(MONITOR monitor-44)
		(MONITOR monitor-45)
		(MONITOR monitor-46)
		(MONITOR monitor-47)
		(MONITOR monitor-48)
		(MONITOR monitor-49)
		(MONITOR monitor-50)
		(SERVER server-1)
		(SERVER server-2)
		(SERVER server-3)
		(SERVER server-4)
		(SERVER server-5)
		(SERVER server-6)
		(SERVER server-7)
		(SERVER server-8)
		(SERVER server-9)
		(SERVER server-10)
		(SERVER server-11)
		(SERVER server-12)
		(SERVER server-13)
		(SERVER server-14)
		(SERVER server-15)
		(SERVER server-16)
		(SERVER server-17)
		(SERVER server-18)
		(SERVER server-19)
		(SERVER server-20)
		(SERVER server-21)
		(SERVER server-22)
		(SERVER server-23)
		(SERVER server-24)
		(SERVER server-25)
		(SERVER server-26)
		(SERVER server-27)
		(SERVER server-28)
		(SERVER server-29)
		(SERVER server-30)
		(SERVER server-31)
		(SERVER server-32)
		(SERVER server-33)
		(SERVER server-34)
		(SERVER server-35)
		(SERVER server-36)
		(SERVER server-37)
		(SERVER server-38)
		(SERVER server-39)
		(SERVER server-40)
		(SERVER server-41)
		(SERVER server-42)
		(SERVER server-43)
		(SERVER server-44)
		(SERVER server-45)
		(SERVER server-46)
		(SERVER server-47)
		(SERVER server-48)
		(SERVER server-49)
		(SERVER server-50)
		(road temp-loc monitor-loc)
		(road monitor-loc temp-loc)
		(road temp-loc server-loc)
		(road server-loc temp-loc)
		(road temp-loc goal-loc)
		(road goal-loc temp-loc)
		(at monitor-1 monitor-loc)
		(at monitor-2 monitor-loc)
		(at monitor-3 monitor-loc)
		(at monitor-4 monitor-loc)
		(at monitor-5 monitor-loc)
		(at monitor-6 monitor-loc)
		(at monitor-7 monitor-loc)
		(at monitor-8 monitor-loc)
		(at monitor-9 monitor-loc)
		(at monitor-10 monitor-loc)
		(at monitor-11 monitor-loc)
		(at monitor-12 monitor-loc)
		(at monitor-13 monitor-loc)
		(at monitor-14 monitor-loc)
		(at monitor-15 monitor-loc)
		(at monitor-16 monitor-loc)
		(at monitor-17 monitor-loc)
		(at monitor-18 monitor-loc)
		(at monitor-19 monitor-loc)
		(at monitor-20 monitor-loc)
		(at monitor-21 monitor-loc)
		(at monitor-22 monitor-loc)
		(at monitor-23 monitor-loc)
		(at monitor-24 monitor-loc)
		(at monitor-25 monitor-loc)
		(at monitor-26 monitor-loc)
		(at monitor-27 monitor-loc)
		(at monitor-28 monitor-loc)
		(at monitor-29 monitor-loc)
		(at monitor-30 monitor-loc)
		(at monitor-31 monitor-loc)
		(at monitor-32 monitor-loc)
		(at monitor-33 monitor-loc)
		(at monitor-34 monitor-loc)
		(at monitor-35 monitor-loc)
		(at monitor-36 monitor-loc)
		(at monitor-37 monitor-loc)
		(at monitor-38 monitor-loc)
		(at monitor-39 monitor-loc)
		(at monitor-40 monitor-loc)
		(at monitor-41 monitor-loc)
		(at monitor-42 monitor-loc)
		(at monitor-43 monitor-loc)
		(at monitor-44 monitor-loc)
		(at monitor-45 monitor-loc)
		(at monitor-46 monitor-loc)
		(at monitor-47 monitor-loc)
		(at monitor-48 monitor-loc)
		(at monitor-49 monitor-loc)
		(at monitor-50 monitor-loc)
		(at server-1 server-loc)
		(at server-2 server-loc)
		(at server-3 server-loc)
		(at server-4 server-loc)
		(at server-5 server-loc)
		(at server-6 server-loc)
		(at server-7 server-loc)
		(at server-8 server-loc)
		(at server-9 server-loc)
		(at server-10 server-loc)
		(at server-11 server-loc)
		(at server-12 server-loc)
		(at server-13 server-loc)
		(at server-14 server-loc)
		(at server-15 server-loc)
		(at server-16 server-loc)
		(at server-17 server-loc)
		(at server-18 server-loc)
		(at server-19 server-loc)
		(at server-20 server-loc)
		(at server-21 server-loc)
		(at server-22 server-loc)
		(at server-23 server-loc)
		(at server-24 server-loc)
		(at server-25 server-loc)
		(at server-26 server-loc)
		(at server-27 server-loc)
		(at server-28 server-loc)
		(at server-29 server-loc)
		(at server-30 server-loc)
		(at server-31 server-loc)
		(at server-32 server-loc)
		(at server-33 server-loc)
		(at server-34 server-loc)
		(at server-35 server-loc)
		(at server-36 server-loc)
		(at server-37 server-loc)
		(at server-38 server-loc)
		(at server-39 server-loc)
		(at server-40 server-loc)
		(at server-41 server-loc)
		(at server-42 server-loc)
		(at server-43 server-loc)
		(at server-44 server-loc)
		(at server-45 server-loc)
		(at server-46 server-loc)
		(at server-47 server-loc)
		(at server-48 server-loc)
		(at server-49 server-loc)
		(at server-50 server-loc)
		(at truck-1 temp-loc)
		(at truck-2 temp-loc)
		(capacity truck-1 capacity-1)
		(capacity truck-2 capacity-2)
		(goal goal-loc)
		(no-goal monitor-loc)
		(no-goal server-loc)
		(no-goal temp-loc)
	)
	(:goal (and
		(at monitor-1 goal-loc)
		(at monitor-2 goal-loc)
		(at monitor-3 goal-loc)
		(at monitor-4 goal-loc)
		(at monitor-5 goal-loc)
		(at monitor-6 goal-loc)
		(at monitor-7 goal-loc)
		(at monitor-8 goal-loc)
		(at monitor-9 goal-loc)
		(at monitor-10 goal-loc)
		(at monitor-11 goal-loc)
		(at monitor-12 goal-loc)
		(at monitor-13 goal-loc)
		(at monitor-14 goal-loc)
		(at monitor-15 goal-loc)
		(at monitor-16 goal-loc)
		(at monitor-17 goal-loc)
		(at monitor-18 goal-loc)
		(at monitor-19 goal-loc)
		(at monitor-20 goal-loc)
		(at monitor-21 goal-loc)
		(at monitor-22 goal-loc)
		(at monitor-23 goal-loc)
		(at monitor-24 goal-loc)
		(at monitor-25 goal-loc)
		(at monitor-26 goal-loc)
		(at monitor-27 goal-loc)
		(at monitor-28 goal-loc)
		(at monitor-29 goal-loc)
		(at monitor-30 goal-loc)
		(at monitor-31 goal-loc)
		(at monitor-32 goal-loc)
		(at monitor-33 goal-loc)
		(at monitor-34 goal-loc)
		(at monitor-35 goal-loc)
		(at monitor-36 goal-loc)
		(at monitor-37 goal-loc)
		(at monitor-38 goal-loc)
		(at monitor-39 goal-loc)
		(at monitor-40 goal-loc)
		(at monitor-41 goal-loc)
		(at monitor-42 goal-loc)
		(at monitor-43 goal-loc)
		(at monitor-44 goal-loc)
		(at monitor-45 goal-loc)
		(at monitor-46 goal-loc)
		(at monitor-47 goal-loc)
		(at monitor-48 goal-loc)
		(at monitor-49 goal-loc)
		(at monitor-50 goal-loc)
		(at server-1 goal-loc)
		(at server-2 goal-loc)
		(at server-3 goal-loc)
		(at server-4 goal-loc)
		(at server-5 goal-loc)
		(at server-6 goal-loc)
		(at server-7 goal-loc)
		(at server-8 goal-loc)
		(at server-9 goal-loc)
		(at server-10 goal-loc)
		(at server-11 goal-loc)
		(at server-12 goal-loc)
		(at server-13 goal-loc)
		(at server-14 goal-loc)
		(at server-15 goal-loc)
		(at server-16 goal-loc)
		(at server-17 goal-loc)
		(at server-18 goal-loc)
		(at server-19 goal-loc)
		(at server-20 goal-loc)
		(at server-21 goal-loc)
		(at server-22 goal-loc)
		(at server-23 goal-loc)
		(at server-24 goal-loc)
		(at server-25 goal-loc)
		(at server-26 goal-loc)
		(at server-27 goal-loc)
		(at server-28 goal-loc)
		(at server-29 goal-loc)
		(at server-30 goal-loc)
		(at server-31 goal-loc)
		(at server-32 goal-loc)
		(at server-33 goal-loc)
		(at server-34 goal-loc)
		(at server-35 goal-loc)
		(at server-36 goal-loc)
		(at server-37 goal-loc)
		(at server-38 goal-loc)
		(at server-39 goal-loc)
		(at server-40 goal-loc)
		(at server-41 goal-loc)
		(at server-42 goal-loc)
		(at server-43 goal-loc)
		(at server-44 goal-loc)
		(at server-45 goal-loc)
		(at server-46 goal-loc)
		(at server-47 goal-loc)
		(at server-48 goal-loc)
		(at server-49 goal-loc)
		(at server-50 goal-loc)
		)
	)
)