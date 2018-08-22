(define (problem driverlog-capacity-t1-d1-p120)
	(:domain driverlog-capacity)
	(:objects
		driver-1 - driver
		truck-1 - truck
		package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15 package-16 package-17 package-18 package-19 package-20 package-21 package-22 package-23 package-24 package-25 package-26 package-27 package-28 package-29 package-30 package-31 package-32 package-33 package-34 package-35 package-36 package-37 package-38 package-39 package-40 package-41 package-42 package-43 package-44 package-45 package-46 package-47 package-48 package-49 package-50 package-51 package-52 package-53 package-54 package-55 package-56 package-57 package-58 package-59 package-60 package-61 package-62 package-63 package-64 package-65 package-66 package-67 package-68 package-69 package-70 package-71 package-72 package-73 package-74 package-75 package-76 package-77 package-78 package-79 package-80 package-81 package-82 package-83 package-84 package-85 package-86 package-87 package-88 package-89 package-90 package-91 package-92 package-93 package-94 package-95 package-96 package-97 package-98 package-99 package-100 package-101 package-102 package-103 package-104 package-105 package-106 package-107 package-108 package-109 package-110 package-111 package-112 package-113 package-114 package-115 package-116 package-117 package-118 package-119 package-120 - package
		capacity-0 capacity-1 - capacity-number
	)
	(:init
		(road L1 L2)
		(road L2 L1)
		(road L1 L3)
		(road L3 L1)
		(road L2 D)
		(road D L2)
		(road L3 D)
		(road D L3)
		(road D G1)
		(road G1 D)
		(road D G2)
		(road G2 D)
		(path P1 L1)
		(path L1 P1)
		(path P1 L2)
		(path L2 P1)
		(path P2 L1)
		(path L1 P2)
		(path P2 L3)
		(path L3 P2)
		(path P3 L2)
		(path L2 P3)
		(path P3 D)
		(path D P3)
		(path P4 L3)
		(path L3 P4)
		(path P4 D)
		(path D P4)
		(path P5 D)
		(path D P5)
		(path P5 G1)
		(path G1 P5)
		(path P6 D)
		(path D P6)
		(path P6 G2)
		(path G2 P6)
		(at driver-1 L2)
		(at truck-1 L3)
		(no-driver truck-1)
		(at package-1 L1)
		(at package-2 L1)
		(at package-3 L1)
		(at package-4 L1)
		(at package-5 L1)
		(at package-6 L1)
		(at package-7 L1)
		(at package-8 L1)
		(at package-9 L1)
		(at package-10 L1)
		(at package-11 L1)
		(at package-12 L1)
		(at package-13 L1)
		(at package-14 L1)
		(at package-15 L1)
		(at package-16 L1)
		(at package-17 L1)
		(at package-18 L1)
		(at package-19 L1)
		(at package-20 L1)
		(at package-21 L1)
		(at package-22 L1)
		(at package-23 L1)
		(at package-24 L1)
		(at package-25 L1)
		(at package-26 L1)
		(at package-27 L1)
		(at package-28 L1)
		(at package-29 L1)
		(at package-30 L1)
		(at package-31 L1)
		(at package-32 L1)
		(at package-33 L1)
		(at package-34 L1)
		(at package-35 L1)
		(at package-36 L1)
		(at package-37 L1)
		(at package-38 L1)
		(at package-39 L1)
		(at package-40 L1)
		(at package-41 L1)
		(at package-42 L1)
		(at package-43 L1)
		(at package-44 L1)
		(at package-45 L1)
		(at package-46 L1)
		(at package-47 L1)
		(at package-48 L1)
		(at package-49 L1)
		(at package-50 L1)
		(at package-51 L1)
		(at package-52 L1)
		(at package-53 L1)
		(at package-54 L1)
		(at package-55 L1)
		(at package-56 L1)
		(at package-57 L1)
		(at package-58 L1)
		(at package-59 L1)
		(at package-60 L1)
		(at package-61 L1)
		(at package-62 L1)
		(at package-63 L1)
		(at package-64 L1)
		(at package-65 L1)
		(at package-66 L1)
		(at package-67 L1)
		(at package-68 L1)
		(at package-69 L1)
		(at package-70 L1)
		(at package-71 L1)
		(at package-72 L1)
		(at package-73 L1)
		(at package-74 L1)
		(at package-75 L1)
		(at package-76 L1)
		(at package-77 L1)
		(at package-78 L1)
		(at package-79 L1)
		(at package-80 L1)
		(at package-81 L1)
		(at package-82 L1)
		(at package-83 L1)
		(at package-84 L1)
		(at package-85 L1)
		(at package-86 L1)
		(at package-87 L1)
		(at package-88 L1)
		(at package-89 L1)
		(at package-90 L1)
		(at package-91 L1)
		(at package-92 L1)
		(at package-93 L1)
		(at package-94 L1)
		(at package-95 L1)
		(at package-96 L1)
		(at package-97 L1)
		(at package-98 L1)
		(at package-99 L1)
		(at package-100 L1)
		(at package-101 L1)
		(at package-102 L1)
		(at package-103 L1)
		(at package-104 L1)
		(at package-105 L1)
		(at package-106 L1)
		(at package-107 L1)
		(at package-108 L1)
		(at package-109 L1)
		(at package-110 L1)
		(at package-111 L1)
		(at package-112 L1)
		(at package-113 L1)
		(at package-114 L1)
		(at package-115 L1)
		(at package-116 L1)
		(at package-117 L1)
		(at package-118 L1)
		(at package-119 L1)
		(at package-120 L1)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
	)
	(:goal (and
		(at package-1 G2)
		(at package-2 G1)
		(at package-3 G1)
		(at package-4 G1)
		(at package-5 G1)
		(at package-6 G2)
		(at package-7 G1)
		(at package-8 G2)
		(at package-9 G1)
		(at package-10 G2)
		(at package-11 G1)
		(at package-12 G1)
		(at package-13 G1)
		(at package-14 G2)
		(at package-15 G1)
		(at package-16 G1)
		(at package-17 G2)
		(at package-18 G1)
		(at package-19 G1)
		(at package-20 G1)
		(at package-21 G2)
		(at package-22 G1)
		(at package-23 G2)
		(at package-24 G2)
		(at package-25 G2)
		(at package-26 G2)
		(at package-27 G1)
		(at package-28 G1)
		(at package-29 G1)
		(at package-30 G2)
		(at package-31 G1)
		(at package-32 G2)
		(at package-33 G2)
		(at package-34 G1)
		(at package-35 G1)
		(at package-36 G2)
		(at package-37 G1)
		(at package-38 G2)
		(at package-39 G1)
		(at package-40 G2)
		(at package-41 G1)
		(at package-42 G2)
		(at package-43 G2)
		(at package-44 G2)
		(at package-45 G1)
		(at package-46 G1)
		(at package-47 G1)
		(at package-48 G2)
		(at package-49 G1)
		(at package-50 G1)
		(at package-51 G1)
		(at package-52 G2)
		(at package-53 G1)
		(at package-54 G2)
		(at package-55 G2)
		(at package-56 G1)
		(at package-57 G2)
		(at package-58 G2)
		(at package-59 G2)
		(at package-60 G1)
		(at package-61 G2)
		(at package-62 G1)
		(at package-63 G2)
		(at package-64 G1)
		(at package-65 G2)
		(at package-66 G2)
		(at package-67 G1)
		(at package-68 G1)
		(at package-69 G1)
		(at package-70 G2)
		(at package-71 G1)
		(at package-72 G1)
		(at package-73 G1)
		(at package-74 G2)
		(at package-75 G2)
		(at package-76 G1)
		(at package-77 G1)
		(at package-78 G1)
		(at package-79 G2)
		(at package-80 G2)
		(at package-81 G1)
		(at package-82 G1)
		(at package-83 G1)
		(at package-84 G2)
		(at package-85 G1)
		(at package-86 G1)
		(at package-87 G2)
		(at package-88 G2)
		(at package-89 G2)
		(at package-90 G1)
		(at package-91 G1)
		(at package-92 G2)
		(at package-93 G1)
		(at package-94 G1)
		(at package-95 G2)
		(at package-96 G1)
		(at package-97 G1)
		(at package-98 G1)
		(at package-99 G1)
		(at package-100 G1)
		(at package-101 G1)
		(at package-102 G2)
		(at package-103 G2)
		(at package-104 G1)
		(at package-105 G2)
		(at package-106 G1)
		(at package-107 G2)
		(at package-108 G1)
		(at package-109 G2)
		(at package-110 G1)
		(at package-111 G2)
		(at package-112 G1)
		(at package-113 G2)
		(at package-114 G2)
		(at package-115 G2)
		(at package-116 G2)
		(at package-117 G1)
		(at package-118 G1)
		(at package-119 G1)
		(at package-120 G1)
		(at driver-1 D)
		(at truck-1 D)
		)
	)
)
