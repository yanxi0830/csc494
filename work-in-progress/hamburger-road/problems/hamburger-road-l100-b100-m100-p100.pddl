(define (problem hamburger-road-l100-b100-m100-p100)
	(:domain hamburger-road)
	(:objects
		lettuce-1 lettuce-2 lettuce-3 lettuce-4 lettuce-5 lettuce-6 lettuce-7 lettuce-8 lettuce-9 lettuce-10 lettuce-11 lettuce-12 lettuce-13 lettuce-14 lettuce-15 lettuce-16 lettuce-17 lettuce-18 lettuce-19 lettuce-20 lettuce-21 lettuce-22 lettuce-23 lettuce-24 lettuce-25 lettuce-26 lettuce-27 lettuce-28 lettuce-29 lettuce-30 lettuce-31 lettuce-32 lettuce-33 lettuce-34 lettuce-35 lettuce-36 lettuce-37 lettuce-38 lettuce-39 lettuce-40 lettuce-41 lettuce-42 lettuce-43 lettuce-44 lettuce-45 lettuce-46 lettuce-47 lettuce-48 lettuce-49 lettuce-50 lettuce-51 lettuce-52 lettuce-53 lettuce-54 lettuce-55 lettuce-56 lettuce-57 lettuce-58 lettuce-59 lettuce-60 lettuce-61 lettuce-62 lettuce-63 lettuce-64 lettuce-65 lettuce-66 lettuce-67 lettuce-68 lettuce-69 lettuce-70 lettuce-71 lettuce-72 lettuce-73 lettuce-74 lettuce-75 lettuce-76 lettuce-77 lettuce-78 lettuce-79 lettuce-80 lettuce-81 lettuce-82 lettuce-83 lettuce-84 lettuce-85 lettuce-86 lettuce-87 lettuce-88 lettuce-89 lettuce-90 lettuce-91 lettuce-92 lettuce-93 lettuce-94 lettuce-95 lettuce-96 lettuce-97 lettuce-98 lettuce-99 lettuce-100 - lettuce
		buns-1 buns-2 buns-3 buns-4 buns-5 buns-6 buns-7 buns-8 buns-9 buns-10 buns-11 buns-12 buns-13 buns-14 buns-15 buns-16 buns-17 buns-18 buns-19 buns-20 buns-21 buns-22 buns-23 buns-24 buns-25 buns-26 buns-27 buns-28 buns-29 buns-30 buns-31 buns-32 buns-33 buns-34 buns-35 buns-36 buns-37 buns-38 buns-39 buns-40 buns-41 buns-42 buns-43 buns-44 buns-45 buns-46 buns-47 buns-48 buns-49 buns-50 buns-51 buns-52 buns-53 buns-54 buns-55 buns-56 buns-57 buns-58 buns-59 buns-60 buns-61 buns-62 buns-63 buns-64 buns-65 buns-66 buns-67 buns-68 buns-69 buns-70 buns-71 buns-72 buns-73 buns-74 buns-75 buns-76 buns-77 buns-78 buns-79 buns-80 buns-81 buns-82 buns-83 buns-84 buns-85 buns-86 buns-87 buns-88 buns-89 buns-90 buns-91 buns-92 buns-93 buns-94 buns-95 buns-96 buns-97 buns-98 buns-99 buns-100 - buns
		meat-1 meat-2 meat-3 meat-4 meat-5 meat-6 meat-7 meat-8 meat-9 meat-10 meat-11 meat-12 meat-13 meat-14 meat-15 meat-16 meat-17 meat-18 meat-19 meat-20 meat-21 meat-22 meat-23 meat-24 meat-25 meat-26 meat-27 meat-28 meat-29 meat-30 meat-31 meat-32 meat-33 meat-34 meat-35 meat-36 meat-37 meat-38 meat-39 meat-40 meat-41 meat-42 meat-43 meat-44 meat-45 meat-46 meat-47 meat-48 meat-49 meat-50 meat-51 meat-52 meat-53 meat-54 meat-55 meat-56 meat-57 meat-58 meat-59 meat-60 meat-61 meat-62 meat-63 meat-64 meat-65 meat-66 meat-67 meat-68 meat-69 meat-70 meat-71 meat-72 meat-73 meat-74 meat-75 meat-76 meat-77 meat-78 meat-79 meat-80 meat-81 meat-82 meat-83 meat-84 meat-85 meat-86 meat-87 meat-88 meat-89 meat-90 meat-91 meat-92 meat-93 meat-94 meat-95 meat-96 meat-97 meat-98 meat-99 meat-100 - meat
		plate-1 plate-2 plate-3 plate-4 plate-5 plate-6 plate-7 plate-8 plate-9 plate-10 plate-11 plate-12 plate-13 plate-14 plate-15 plate-16 plate-17 plate-18 plate-19 plate-20 plate-21 plate-22 plate-23 plate-24 plate-25 plate-26 plate-27 plate-28 plate-29 plate-30 plate-31 plate-32 plate-33 plate-34 plate-35 plate-36 plate-37 plate-38 plate-39 plate-40 plate-41 plate-42 plate-43 plate-44 plate-45 plate-46 plate-47 plate-48 plate-49 plate-50 plate-51 plate-52 plate-53 plate-54 plate-55 plate-56 plate-57 plate-58 plate-59 plate-60 plate-61 plate-62 plate-63 plate-64 plate-65 plate-66 plate-67 plate-68 plate-69 plate-70 plate-71 plate-72 plate-73 plate-74 plate-75 plate-76 plate-77 plate-78 plate-79 plate-80 plate-81 plate-82 plate-83 plate-84 plate-85 plate-86 plate-87 plate-88 plate-89 plate-90 plate-91 plate-92 plate-93 plate-94 plate-95 plate-96 plate-97 plate-98 plate-99 plate-100 - plate
	)
	(:init
		(road L1 L2)
		(road L2 L1)
		(road L1 L3)
		(road L3 L1)
		(road L1 L4)
		(road L4 L1)
		(road L1 L5)
		(road L5 L1)
		(road L2 L3)
		(road L3 L2)
		(road L2 L4)
		(road L4 L2)
		(road L2 L5)
		(road L5 L2)
		(road L3 L4)
		(road L4 L3)
		(road L3 L5)
		(road L5 L3)
		(road L4 L5)
		(road L5 L4)
		(at lettuce-1 L1)
		(at lettuce-2 L1)
		(at lettuce-3 L1)
		(at lettuce-4 L1)
		(at lettuce-5 L1)
		(at lettuce-6 L1)
		(at lettuce-7 L1)
		(at lettuce-8 L1)
		(at lettuce-9 L1)
		(at lettuce-10 L1)
		(at lettuce-11 L1)
		(at lettuce-12 L1)
		(at lettuce-13 L1)
		(at lettuce-14 L1)
		(at lettuce-15 L1)
		(at lettuce-16 L1)
		(at lettuce-17 L1)
		(at lettuce-18 L1)
		(at lettuce-19 L1)
		(at lettuce-20 L1)
		(at lettuce-21 L1)
		(at lettuce-22 L1)
		(at lettuce-23 L1)
		(at lettuce-24 L1)
		(at lettuce-25 L1)
		(at lettuce-26 L1)
		(at lettuce-27 L1)
		(at lettuce-28 L1)
		(at lettuce-29 L1)
		(at lettuce-30 L1)
		(at lettuce-31 L1)
		(at lettuce-32 L1)
		(at lettuce-33 L1)
		(at lettuce-34 L1)
		(at lettuce-35 L1)
		(at lettuce-36 L1)
		(at lettuce-37 L1)
		(at lettuce-38 L1)
		(at lettuce-39 L1)
		(at lettuce-40 L1)
		(at lettuce-41 L1)
		(at lettuce-42 L1)
		(at lettuce-43 L1)
		(at lettuce-44 L1)
		(at lettuce-45 L1)
		(at lettuce-46 L1)
		(at lettuce-47 L1)
		(at lettuce-48 L1)
		(at lettuce-49 L1)
		(at lettuce-50 L1)
		(at lettuce-51 L1)
		(at lettuce-52 L1)
		(at lettuce-53 L1)
		(at lettuce-54 L1)
		(at lettuce-55 L1)
		(at lettuce-56 L1)
		(at lettuce-57 L1)
		(at lettuce-58 L1)
		(at lettuce-59 L1)
		(at lettuce-60 L1)
		(at lettuce-61 L1)
		(at lettuce-62 L1)
		(at lettuce-63 L1)
		(at lettuce-64 L1)
		(at lettuce-65 L1)
		(at lettuce-66 L1)
		(at lettuce-67 L1)
		(at lettuce-68 L1)
		(at lettuce-69 L1)
		(at lettuce-70 L1)
		(at lettuce-71 L1)
		(at lettuce-72 L1)
		(at lettuce-73 L1)
		(at lettuce-74 L1)
		(at lettuce-75 L1)
		(at lettuce-76 L1)
		(at lettuce-77 L1)
		(at lettuce-78 L1)
		(at lettuce-79 L1)
		(at lettuce-80 L1)
		(at lettuce-81 L1)
		(at lettuce-82 L1)
		(at lettuce-83 L1)
		(at lettuce-84 L1)
		(at lettuce-85 L1)
		(at lettuce-86 L1)
		(at lettuce-87 L1)
		(at lettuce-88 L1)
		(at lettuce-89 L1)
		(at lettuce-90 L1)
		(at lettuce-91 L1)
		(at lettuce-92 L1)
		(at lettuce-93 L1)
		(at lettuce-94 L1)
		(at lettuce-95 L1)
		(at lettuce-96 L1)
		(at lettuce-97 L1)
		(at lettuce-98 L1)
		(at lettuce-99 L1)
		(at lettuce-100 L1)
		(at buns-1 L2)
		(at buns-2 L2)
		(at buns-3 L2)
		(at buns-4 L2)
		(at buns-5 L2)
		(at buns-6 L2)
		(at buns-7 L2)
		(at buns-8 L2)
		(at buns-9 L2)
		(at buns-10 L2)
		(at buns-11 L2)
		(at buns-12 L2)
		(at buns-13 L2)
		(at buns-14 L2)
		(at buns-15 L2)
		(at buns-16 L2)
		(at buns-17 L2)
		(at buns-18 L2)
		(at buns-19 L2)
		(at buns-20 L2)
		(at buns-21 L2)
		(at buns-22 L2)
		(at buns-23 L2)
		(at buns-24 L2)
		(at buns-25 L2)
		(at buns-26 L2)
		(at buns-27 L2)
		(at buns-28 L2)
		(at buns-29 L2)
		(at buns-30 L2)
		(at buns-31 L2)
		(at buns-32 L2)
		(at buns-33 L2)
		(at buns-34 L2)
		(at buns-35 L2)
		(at buns-36 L2)
		(at buns-37 L2)
		(at buns-38 L2)
		(at buns-39 L2)
		(at buns-40 L2)
		(at buns-41 L2)
		(at buns-42 L2)
		(at buns-43 L2)
		(at buns-44 L2)
		(at buns-45 L2)
		(at buns-46 L2)
		(at buns-47 L2)
		(at buns-48 L2)
		(at buns-49 L2)
		(at buns-50 L2)
		(at buns-51 L2)
		(at buns-52 L2)
		(at buns-53 L2)
		(at buns-54 L2)
		(at buns-55 L2)
		(at buns-56 L2)
		(at buns-57 L2)
		(at buns-58 L2)
		(at buns-59 L2)
		(at buns-60 L2)
		(at buns-61 L2)
		(at buns-62 L2)
		(at buns-63 L2)
		(at buns-64 L2)
		(at buns-65 L2)
		(at buns-66 L2)
		(at buns-67 L2)
		(at buns-68 L2)
		(at buns-69 L2)
		(at buns-70 L2)
		(at buns-71 L2)
		(at buns-72 L2)
		(at buns-73 L2)
		(at buns-74 L2)
		(at buns-75 L2)
		(at buns-76 L2)
		(at buns-77 L2)
		(at buns-78 L2)
		(at buns-79 L2)
		(at buns-80 L2)
		(at buns-81 L2)
		(at buns-82 L2)
		(at buns-83 L2)
		(at buns-84 L2)
		(at buns-85 L2)
		(at buns-86 L2)
		(at buns-87 L2)
		(at buns-88 L2)
		(at buns-89 L2)
		(at buns-90 L2)
		(at buns-91 L2)
		(at buns-92 L2)
		(at buns-93 L2)
		(at buns-94 L2)
		(at buns-95 L2)
		(at buns-96 L2)
		(at buns-97 L2)
		(at buns-98 L2)
		(at buns-99 L2)
		(at buns-100 L2)
		(at meat-1 L3)
		(at meat-2 L3)
		(at meat-3 L3)
		(at meat-4 L3)
		(at meat-5 L3)
		(at meat-6 L3)
		(at meat-7 L3)
		(at meat-8 L3)
		(at meat-9 L3)
		(at meat-10 L3)
		(at meat-11 L3)
		(at meat-12 L3)
		(at meat-13 L3)
		(at meat-14 L3)
		(at meat-15 L3)
		(at meat-16 L3)
		(at meat-17 L3)
		(at meat-18 L3)
		(at meat-19 L3)
		(at meat-20 L3)
		(at meat-21 L3)
		(at meat-22 L3)
		(at meat-23 L3)
		(at meat-24 L3)
		(at meat-25 L3)
		(at meat-26 L3)
		(at meat-27 L3)
		(at meat-28 L3)
		(at meat-29 L3)
		(at meat-30 L3)
		(at meat-31 L3)
		(at meat-32 L3)
		(at meat-33 L3)
		(at meat-34 L3)
		(at meat-35 L3)
		(at meat-36 L3)
		(at meat-37 L3)
		(at meat-38 L3)
		(at meat-39 L3)
		(at meat-40 L3)
		(at meat-41 L3)
		(at meat-42 L3)
		(at meat-43 L3)
		(at meat-44 L3)
		(at meat-45 L3)
		(at meat-46 L3)
		(at meat-47 L3)
		(at meat-48 L3)
		(at meat-49 L3)
		(at meat-50 L3)
		(at meat-51 L3)
		(at meat-52 L3)
		(at meat-53 L3)
		(at meat-54 L3)
		(at meat-55 L3)
		(at meat-56 L3)
		(at meat-57 L3)
		(at meat-58 L3)
		(at meat-59 L3)
		(at meat-60 L3)
		(at meat-61 L3)
		(at meat-62 L3)
		(at meat-63 L3)
		(at meat-64 L3)
		(at meat-65 L3)
		(at meat-66 L3)
		(at meat-67 L3)
		(at meat-68 L3)
		(at meat-69 L3)
		(at meat-70 L3)
		(at meat-71 L3)
		(at meat-72 L3)
		(at meat-73 L3)
		(at meat-74 L3)
		(at meat-75 L3)
		(at meat-76 L3)
		(at meat-77 L3)
		(at meat-78 L3)
		(at meat-79 L3)
		(at meat-80 L3)
		(at meat-81 L3)
		(at meat-82 L3)
		(at meat-83 L3)
		(at meat-84 L3)
		(at meat-85 L3)
		(at meat-86 L3)
		(at meat-87 L3)
		(at meat-88 L3)
		(at meat-89 L3)
		(at meat-90 L3)
		(at meat-91 L3)
		(at meat-92 L3)
		(at meat-93 L3)
		(at meat-94 L3)
		(at meat-95 L3)
		(at meat-96 L3)
		(at meat-97 L3)
		(at meat-98 L3)
		(at meat-99 L3)
		(at meat-100 L3)
		(at plate-1 L4)
		(at plate-2 L4)
		(at plate-3 L4)
		(at plate-4 L4)
		(at plate-5 L4)
		(at plate-6 L4)
		(at plate-7 L4)
		(at plate-8 L4)
		(at plate-9 L4)
		(at plate-10 L4)
		(at plate-11 L4)
		(at plate-12 L4)
		(at plate-13 L4)
		(at plate-14 L4)
		(at plate-15 L4)
		(at plate-16 L4)
		(at plate-17 L4)
		(at plate-18 L4)
		(at plate-19 L4)
		(at plate-20 L4)
		(at plate-21 L4)
		(at plate-22 L4)
		(at plate-23 L4)
		(at plate-24 L4)
		(at plate-25 L4)
		(at plate-26 L4)
		(at plate-27 L4)
		(at plate-28 L4)
		(at plate-29 L4)
		(at plate-30 L4)
		(at plate-31 L4)
		(at plate-32 L4)
		(at plate-33 L4)
		(at plate-34 L4)
		(at plate-35 L4)
		(at plate-36 L4)
		(at plate-37 L4)
		(at plate-38 L4)
		(at plate-39 L4)
		(at plate-40 L4)
		(at plate-41 L4)
		(at plate-42 L4)
		(at plate-43 L4)
		(at plate-44 L4)
		(at plate-45 L4)
		(at plate-46 L4)
		(at plate-47 L4)
		(at plate-48 L4)
		(at plate-49 L4)
		(at plate-50 L4)
		(at plate-51 L4)
		(at plate-52 L4)
		(at plate-53 L4)
		(at plate-54 L4)
		(at plate-55 L4)
		(at plate-56 L4)
		(at plate-57 L4)
		(at plate-58 L4)
		(at plate-59 L4)
		(at plate-60 L4)
		(at plate-61 L4)
		(at plate-62 L4)
		(at plate-63 L4)
		(at plate-64 L4)
		(at plate-65 L4)
		(at plate-66 L4)
		(at plate-67 L4)
		(at plate-68 L4)
		(at plate-69 L4)
		(at plate-70 L4)
		(at plate-71 L4)
		(at plate-72 L4)
		(at plate-73 L4)
		(at plate-74 L4)
		(at plate-75 L4)
		(at plate-76 L4)
		(at plate-77 L4)
		(at plate-78 L4)
		(at plate-79 L4)
		(at plate-80 L4)
		(at plate-81 L4)
		(at plate-82 L4)
		(at plate-83 L4)
		(at plate-84 L4)
		(at plate-85 L4)
		(at plate-86 L4)
		(at plate-87 L4)
		(at plate-88 L4)
		(at plate-89 L4)
		(at plate-90 L4)
		(at plate-91 L4)
		(at plate-92 L4)
		(at plate-93 L4)
		(at plate-94 L4)
		(at plate-95 L4)
		(at plate-96 L4)
		(at plate-97 L4)
		(at plate-98 L4)
		(at plate-99 L4)
		(at plate-100 L4)
		(at R1 L5)
		(empty-hand R1)
	)
	(:goal (and
		(have-burger plate-1)
		(have-burger plate-2)
		(have-burger plate-3)
		(have-burger plate-4)
		(have-burger plate-5)
		(have-burger plate-6)
		(have-burger plate-7)
		(have-burger plate-8)
		(have-burger plate-9)
		(have-burger plate-10)
		(have-burger plate-11)
		(have-burger plate-12)
		(have-burger plate-13)
		(have-burger plate-14)
		(have-burger plate-15)
		(have-burger plate-16)
		(have-burger plate-17)
		(have-burger plate-18)
		(have-burger plate-19)
		(have-burger plate-20)
		(have-burger plate-21)
		(have-burger plate-22)
		(have-burger plate-23)
		(have-burger plate-24)
		(have-burger plate-25)
		(have-burger plate-26)
		(have-burger plate-27)
		(have-burger plate-28)
		(have-burger plate-29)
		(have-burger plate-30)
		(have-burger plate-31)
		(have-burger plate-32)
		(have-burger plate-33)
		(have-burger plate-34)
		(have-burger plate-35)
		(have-burger plate-36)
		(have-burger plate-37)
		(have-burger plate-38)
		(have-burger plate-39)
		(have-burger plate-40)
		(have-burger plate-41)
		(have-burger plate-42)
		(have-burger plate-43)
		(have-burger plate-44)
		(have-burger plate-45)
		(have-burger plate-46)
		(have-burger plate-47)
		(have-burger plate-48)
		(have-burger plate-49)
		(have-burger plate-50)
		(have-burger plate-51)
		(have-burger plate-52)
		(have-burger plate-53)
		(have-burger plate-54)
		(have-burger plate-55)
		(have-burger plate-56)
		(have-burger plate-57)
		(have-burger plate-58)
		(have-burger plate-59)
		(have-burger plate-60)
		(have-burger plate-61)
		(have-burger plate-62)
		(have-burger plate-63)
		(have-burger plate-64)
		(have-burger plate-65)
		(have-burger plate-66)
		(have-burger plate-67)
		(have-burger plate-68)
		(have-burger plate-69)
		(have-burger plate-70)
		(have-burger plate-71)
		(have-burger plate-72)
		(have-burger plate-73)
		(have-burger plate-74)
		(have-burger plate-75)
		(have-burger plate-76)
		(have-burger plate-77)
		(have-burger plate-78)
		(have-burger plate-79)
		(have-burger plate-80)
		(have-burger plate-81)
		(have-burger plate-82)
		(have-burger plate-83)
		(have-burger plate-84)
		(have-burger plate-85)
		(have-burger plate-86)
		(have-burger plate-87)
		(have-burger plate-88)
		(have-burger plate-89)
		(have-burger plate-90)
		(have-burger plate-91)
		(have-burger plate-92)
		(have-burger plate-93)
		(have-burger plate-94)
		(have-burger plate-95)
		(have-burger plate-96)
		(have-burger plate-97)
		(have-burger plate-98)
		(have-burger plate-99)
		(have-burger plate-100)
		)
	)
)