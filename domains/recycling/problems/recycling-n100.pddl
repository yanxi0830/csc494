(define (problem recycling-n100)
	(:domain recycling)
	(:objects
		glass-1 glass-2 glass-3 glass-4 glass-5 glass-6 glass-7 glass-8 glass-9 glass-10 glass-11 glass-12 glass-13 - glass
		paper-1 paper-2 paper-3 paper-4 paper-5 paper-6 paper-7 paper-8 paper-9 paper-10 paper-11 paper-12 paper-13 paper-14 paper-15 paper-16 paper-17 paper-18 paper-19 paper-20 paper-21 paper-22 paper-23 paper-24 paper-25 paper-26 paper-27 paper-28 paper-29 paper-30 paper-31 paper-32 paper-33 paper-34 paper-35 paper-36 paper-37 paper-38 paper-39 paper-40 paper-41 paper-42 paper-43 paper-44 paper-45 paper-46 paper-47 paper-48 paper-49 paper-50 paper-51 paper-52 paper-53 paper-54 paper-55 paper-56 paper-57 paper-58 paper-59 paper-60 paper-61 paper-62 paper-63 paper-64 paper-65 paper-66 paper-67 paper-68 paper-69 paper-70 paper-71 paper-72 paper-73 paper-74 paper-75 paper-76 paper-77 paper-78 paper-79 paper-80 paper-81 paper-82 paper-83 paper-84 paper-85 paper-86 paper-87 - paper
		bin-1 bin-2 bin-3 bin-4 bin-5 bin-6 bin-7 bin-8 bin-9 bin-10 bin-11 bin-12 bin-13 bin-14 bin-15 bin-16 bin-17 bin-18 bin-19 bin-20 bin-21 bin-22 bin-23 bin-24 bin-25 bin-26 bin-27 bin-28 bin-29 bin-30 bin-31 bin-32 bin-33 bin-34 bin-35 bin-36 bin-37 bin-38 bin-39 bin-40 bin-41 bin-42 bin-43 bin-44 bin-45 bin-46 bin-47 bin-48 bin-49 bin-50 bin-51 bin-52 bin-53 bin-54 bin-55 bin-56 bin-57 bin-58 bin-59 bin-60 bin-61 bin-62 bin-63 bin-64 bin-65 bin-66 bin-67 bin-68 bin-69 bin-70 bin-71 bin-72 bin-73 bin-74 bin-75 bin-76 bin-77 bin-78 bin-79 bin-80 bin-81 bin-82 bin-83 bin-84 bin-85 bin-86 bin-87 bin-88 bin-89 bin-90 bin-91 bin-92 bin-93 bin-94 bin-95 bin-96 bin-97 bin-98 bin-99 bin-100 - bin
		gc - glass-container
		pc - paper-container
	)
	(:init
		(in glass-1 bin-1)
		(not (empty bin-1))
		(in glass-2 bin-2)
		(not (empty bin-2))
		(in glass-3 bin-3)
		(not (empty bin-3))
		(in glass-4 bin-4)
		(not (empty bin-4))
		(in glass-5 bin-5)
		(not (empty bin-5))
		(in glass-6 bin-6)
		(not (empty bin-6))
		(in glass-7 bin-7)
		(not (empty bin-7))
		(in glass-8 bin-8)
		(not (empty bin-8))
		(in glass-9 bin-9)
		(not (empty bin-9))
		(in glass-10 bin-10)
		(not (empty bin-10))
		(in glass-11 bin-11)
		(not (empty bin-11))
		(in glass-12 bin-12)
		(not (empty bin-12))
		(in glass-13 bin-13)
		(not (empty bin-13))
		(in paper-1 bin-14)
		(not (empty bin-14))
		(in paper-2 bin-15)
		(not (empty bin-15))
		(in paper-3 bin-16)
		(not (empty bin-16))
		(in paper-4 bin-17)
		(not (empty bin-17))
		(in paper-5 bin-18)
		(not (empty bin-18))
		(in paper-6 bin-19)
		(not (empty bin-19))
		(in paper-7 bin-20)
		(not (empty bin-20))
		(in paper-8 bin-21)
		(not (empty bin-21))
		(in paper-9 bin-22)
		(not (empty bin-22))
		(in paper-10 bin-23)
		(not (empty bin-23))
		(in paper-11 bin-24)
		(not (empty bin-24))
		(in paper-12 bin-25)
		(not (empty bin-25))
		(in paper-13 bin-26)
		(not (empty bin-26))
		(in paper-14 bin-27)
		(not (empty bin-27))
		(in paper-15 bin-28)
		(not (empty bin-28))
		(in paper-16 bin-29)
		(not (empty bin-29))
		(in paper-17 bin-30)
		(not (empty bin-30))
		(in paper-18 bin-31)
		(not (empty bin-31))
		(in paper-19 bin-32)
		(not (empty bin-32))
		(in paper-20 bin-33)
		(not (empty bin-33))
		(in paper-21 bin-34)
		(not (empty bin-34))
		(in paper-22 bin-35)
		(not (empty bin-35))
		(in paper-23 bin-36)
		(not (empty bin-36))
		(in paper-24 bin-37)
		(not (empty bin-37))
		(in paper-25 bin-38)
		(not (empty bin-38))
		(in paper-26 bin-39)
		(not (empty bin-39))
		(in paper-27 bin-40)
		(not (empty bin-40))
		(in paper-28 bin-41)
		(not (empty bin-41))
		(in paper-29 bin-42)
		(not (empty bin-42))
		(in paper-30 bin-43)
		(not (empty bin-43))
		(in paper-31 bin-44)
		(not (empty bin-44))
		(in paper-32 bin-45)
		(not (empty bin-45))
		(in paper-33 bin-46)
		(not (empty bin-46))
		(in paper-34 bin-47)
		(not (empty bin-47))
		(in paper-35 bin-48)
		(not (empty bin-48))
		(in paper-36 bin-49)
		(not (empty bin-49))
		(in paper-37 bin-50)
		(not (empty bin-50))
		(in paper-38 bin-51)
		(not (empty bin-51))
		(in paper-39 bin-52)
		(not (empty bin-52))
		(in paper-40 bin-53)
		(not (empty bin-53))
		(in paper-41 bin-54)
		(not (empty bin-54))
		(in paper-42 bin-55)
		(not (empty bin-55))
		(in paper-43 bin-56)
		(not (empty bin-56))
		(in paper-44 bin-57)
		(not (empty bin-57))
		(in paper-45 bin-58)
		(not (empty bin-58))
		(in paper-46 bin-59)
		(not (empty bin-59))
		(in paper-47 bin-60)
		(not (empty bin-60))
		(in paper-48 bin-61)
		(not (empty bin-61))
		(in paper-49 bin-62)
		(not (empty bin-62))
		(in paper-50 bin-63)
		(not (empty bin-63))
		(in paper-51 bin-64)
		(not (empty bin-64))
		(in paper-52 bin-65)
		(not (empty bin-65))
		(in paper-53 bin-66)
		(not (empty bin-66))
		(in paper-54 bin-67)
		(not (empty bin-67))
		(in paper-55 bin-68)
		(not (empty bin-68))
		(in paper-56 bin-69)
		(not (empty bin-69))
		(in paper-57 bin-70)
		(not (empty bin-70))
		(in paper-58 bin-71)
		(not (empty bin-71))
		(in paper-59 bin-72)
		(not (empty bin-72))
		(in paper-60 bin-73)
		(not (empty bin-73))
		(in paper-61 bin-74)
		(not (empty bin-74))
		(in paper-62 bin-75)
		(not (empty bin-75))
		(in paper-63 bin-76)
		(not (empty bin-76))
		(in paper-64 bin-77)
		(not (empty bin-77))
		(in paper-65 bin-78)
		(not (empty bin-78))
		(in paper-66 bin-79)
		(not (empty bin-79))
		(in paper-67 bin-80)
		(not (empty bin-80))
		(in paper-68 bin-81)
		(not (empty bin-81))
		(in paper-69 bin-82)
		(not (empty bin-82))
		(in paper-70 bin-83)
		(not (empty bin-83))
		(in paper-71 bin-84)
		(not (empty bin-84))
		(in paper-72 bin-85)
		(not (empty bin-85))
		(in paper-73 bin-86)
		(not (empty bin-86))
		(in paper-74 bin-87)
		(not (empty bin-87))
		(in paper-75 bin-88)
		(not (empty bin-88))
		(in paper-76 bin-89)
		(not (empty bin-89))
		(in paper-77 bin-90)
		(not (empty bin-90))
		(in paper-78 bin-91)
		(not (empty bin-91))
		(in paper-79 bin-92)
		(not (empty bin-92))
		(in paper-80 bin-93)
		(not (empty bin-93))
		(in paper-81 bin-94)
		(not (empty bin-94))
		(in paper-82 bin-95)
		(not (empty bin-95))
		(in paper-83 bin-96)
		(not (empty bin-96))
		(in paper-84 bin-97)
		(not (empty bin-97))
		(in paper-85 bin-98)
		(not (empty bin-98))
		(in paper-86 bin-99)
		(not (empty bin-99))
		(in paper-87 bin-100)
		(not (empty bin-100))
		(at bin-4)
	)
	(:goal (and
		(in glass-1 gc)
		(in glass-2 gc)
		(in glass-3 gc)
		(in glass-4 gc)
		(in glass-5 gc)
		(in glass-6 gc)
		(in glass-7 gc)
		(in glass-8 gc)
		(in glass-9 gc)
		(in glass-10 gc)
		(in glass-11 gc)
		(in glass-12 gc)
		(in glass-13 gc)
		(in paper-1 pc)
		(in paper-2 pc)
		(in paper-3 pc)
		(in paper-4 pc)
		(in paper-5 pc)
		(in paper-6 pc)
		(in paper-7 pc)
		(in paper-8 pc)
		(in paper-9 pc)
		(in paper-10 pc)
		(in paper-11 pc)
		(in paper-12 pc)
		(in paper-13 pc)
		(in paper-14 pc)
		(in paper-15 pc)
		(in paper-16 pc)
		(in paper-17 pc)
		(in paper-18 pc)
		(in paper-19 pc)
		(in paper-20 pc)
		(in paper-21 pc)
		(in paper-22 pc)
		(in paper-23 pc)
		(in paper-24 pc)
		(in paper-25 pc)
		(in paper-26 pc)
		(in paper-27 pc)
		(in paper-28 pc)
		(in paper-29 pc)
		(in paper-30 pc)
		(in paper-31 pc)
		(in paper-32 pc)
		(in paper-33 pc)
		(in paper-34 pc)
		(in paper-35 pc)
		(in paper-36 pc)
		(in paper-37 pc)
		(in paper-38 pc)
		(in paper-39 pc)
		(in paper-40 pc)
		(in paper-41 pc)
		(in paper-42 pc)
		(in paper-43 pc)
		(in paper-44 pc)
		(in paper-45 pc)
		(in paper-46 pc)
		(in paper-47 pc)
		(in paper-48 pc)
		(in paper-49 pc)
		(in paper-50 pc)
		(in paper-51 pc)
		(in paper-52 pc)
		(in paper-53 pc)
		(in paper-54 pc)
		(in paper-55 pc)
		(in paper-56 pc)
		(in paper-57 pc)
		(in paper-58 pc)
		(in paper-59 pc)
		(in paper-60 pc)
		(in paper-61 pc)
		(in paper-62 pc)
		(in paper-63 pc)
		(in paper-64 pc)
		(in paper-65 pc)
		(in paper-66 pc)
		(in paper-67 pc)
		(in paper-68 pc)
		(in paper-69 pc)
		(in paper-70 pc)
		(in paper-71 pc)
		(in paper-72 pc)
		(in paper-73 pc)
		(in paper-74 pc)
		(in paper-75 pc)
		(in paper-76 pc)
		(in paper-77 pc)
		(in paper-78 pc)
		(in paper-79 pc)
		(in paper-80 pc)
		(in paper-81 pc)
		(in paper-82 pc)
		(in paper-83 pc)
		(in paper-84 pc)
		(in paper-85 pc)
		(in paper-86 pc)
		(in paper-87 pc)
		(empty bin-1)
		(empty bin-2)
		(empty bin-3)
		(empty bin-4)
		(empty bin-5)
		(empty bin-6)
		(empty bin-7)
		(empty bin-8)
		(empty bin-9)
		(empty bin-10)
		(empty bin-11)
		(empty bin-12)
		(empty bin-13)
		(empty bin-14)
		(empty bin-15)
		(empty bin-16)
		(empty bin-17)
		(empty bin-18)
		(empty bin-19)
		(empty bin-20)
		(empty bin-21)
		(empty bin-22)
		(empty bin-23)
		(empty bin-24)
		(empty bin-25)
		(empty bin-26)
		(empty bin-27)
		(empty bin-28)
		(empty bin-29)
		(empty bin-30)
		(empty bin-31)
		(empty bin-32)
		(empty bin-33)
		(empty bin-34)
		(empty bin-35)
		(empty bin-36)
		(empty bin-37)
		(empty bin-38)
		(empty bin-39)
		(empty bin-40)
		(empty bin-41)
		(empty bin-42)
		(empty bin-43)
		(empty bin-44)
		(empty bin-45)
		(empty bin-46)
		(empty bin-47)
		(empty bin-48)
		(empty bin-49)
		(empty bin-50)
		(empty bin-51)
		(empty bin-52)
		(empty bin-53)
		(empty bin-54)
		(empty bin-55)
		(empty bin-56)
		(empty bin-57)
		(empty bin-58)
		(empty bin-59)
		(empty bin-60)
		(empty bin-61)
		(empty bin-62)
		(empty bin-63)
		(empty bin-64)
		(empty bin-65)
		(empty bin-66)
		(empty bin-67)
		(empty bin-68)
		(empty bin-69)
		(empty bin-70)
		(empty bin-71)
		(empty bin-72)
		(empty bin-73)
		(empty bin-74)
		(empty bin-75)
		(empty bin-76)
		(empty bin-77)
		(empty bin-78)
		(empty bin-79)
		(empty bin-80)
		(empty bin-81)
		(empty bin-82)
		(empty bin-83)
		(empty bin-84)
		(empty bin-85)
		(empty bin-86)
		(empty bin-87)
		(empty bin-88)
		(empty bin-89)
		(empty bin-90)
		(empty bin-91)
		(empty bin-92)
		(empty bin-93)
		(empty bin-94)
		(empty bin-95)
		(empty bin-96)
		(empty bin-97)
		(empty bin-98)
		(empty bin-99)
		(empty bin-100)
		)
	)
	)
