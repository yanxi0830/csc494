(define (problem hamburger-strips-p100-r1)
	(:domain hamburger-strips)
	(:objects
		lettuce-1 lettuce-2 lettuce-3 lettuce-4 lettuce-5 lettuce-6 lettuce-7 lettuce-8 lettuce-9 lettuce-10 lettuce-11 lettuce-12 lettuce-13 lettuce-14 lettuce-15 lettuce-16 lettuce-17 lettuce-18 lettuce-19 lettuce-20 lettuce-21 lettuce-22 lettuce-23 lettuce-24 lettuce-25 lettuce-26 lettuce-27 lettuce-28 lettuce-29 lettuce-30 lettuce-31 lettuce-32 lettuce-33 lettuce-34 lettuce-35 lettuce-36 lettuce-37 lettuce-38 lettuce-39 lettuce-40 lettuce-41 lettuce-42 lettuce-43 lettuce-44 lettuce-45 lettuce-46 lettuce-47 lettuce-48 lettuce-49 lettuce-50 lettuce-51 lettuce-52 lettuce-53 lettuce-54 lettuce-55 lettuce-56 lettuce-57 lettuce-58 lettuce-59 lettuce-60 lettuce-61 lettuce-62 lettuce-63 lettuce-64 lettuce-65 lettuce-66 lettuce-67 lettuce-68 lettuce-69 lettuce-70 lettuce-71 lettuce-72 lettuce-73 lettuce-74 lettuce-75 lettuce-76 lettuce-77 lettuce-78 lettuce-79 lettuce-80 lettuce-81 lettuce-82 lettuce-83 lettuce-84 lettuce-85 lettuce-86 lettuce-87 lettuce-88 lettuce-89 lettuce-90 lettuce-91 lettuce-92 lettuce-93 lettuce-94 lettuce-95 lettuce-96 lettuce-97 lettuce-98 lettuce-99 lettuce-100
		buns-1 buns-2 buns-3 buns-4 buns-5 buns-6 buns-7 buns-8 buns-9 buns-10 buns-11 buns-12 buns-13 buns-14 buns-15 buns-16 buns-17 buns-18 buns-19 buns-20 buns-21 buns-22 buns-23 buns-24 buns-25 buns-26 buns-27 buns-28 buns-29 buns-30 buns-31 buns-32 buns-33 buns-34 buns-35 buns-36 buns-37 buns-38 buns-39 buns-40 buns-41 buns-42 buns-43 buns-44 buns-45 buns-46 buns-47 buns-48 buns-49 buns-50 buns-51 buns-52 buns-53 buns-54 buns-55 buns-56 buns-57 buns-58 buns-59 buns-60 buns-61 buns-62 buns-63 buns-64 buns-65 buns-66 buns-67 buns-68 buns-69 buns-70 buns-71 buns-72 buns-73 buns-74 buns-75 buns-76 buns-77 buns-78 buns-79 buns-80 buns-81 buns-82 buns-83 buns-84 buns-85 buns-86 buns-87 buns-88 buns-89 buns-90 buns-91 buns-92 buns-93 buns-94 buns-95 buns-96 buns-97 buns-98 buns-99 buns-100
		meat-1 meat-2 meat-3 meat-4 meat-5 meat-6 meat-7 meat-8 meat-9 meat-10 meat-11 meat-12 meat-13 meat-14 meat-15 meat-16 meat-17 meat-18 meat-19 meat-20 meat-21 meat-22 meat-23 meat-24 meat-25 meat-26 meat-27 meat-28 meat-29 meat-30 meat-31 meat-32 meat-33 meat-34 meat-35 meat-36 meat-37 meat-38 meat-39 meat-40 meat-41 meat-42 meat-43 meat-44 meat-45 meat-46 meat-47 meat-48 meat-49 meat-50 meat-51 meat-52 meat-53 meat-54 meat-55 meat-56 meat-57 meat-58 meat-59 meat-60 meat-61 meat-62 meat-63 meat-64 meat-65 meat-66 meat-67 meat-68 meat-69 meat-70 meat-71 meat-72 meat-73 meat-74 meat-75 meat-76 meat-77 meat-78 meat-79 meat-80 meat-81 meat-82 meat-83 meat-84 meat-85 meat-86 meat-87 meat-88 meat-89 meat-90 meat-91 meat-92 meat-93 meat-94 meat-95 meat-96 meat-97 meat-98 meat-99 meat-100
		plate-1 plate-2 plate-3 plate-4 plate-5 plate-6 plate-7 plate-8 plate-9 plate-10 plate-11 plate-12 plate-13 plate-14 plate-15 plate-16 plate-17 plate-18 plate-19 plate-20 plate-21 plate-22 plate-23 plate-24 plate-25 plate-26 plate-27 plate-28 plate-29 plate-30 plate-31 plate-32 plate-33 plate-34 plate-35 plate-36 plate-37 plate-38 plate-39 plate-40 plate-41 plate-42 plate-43 plate-44 plate-45 plate-46 plate-47 plate-48 plate-49 plate-50 plate-51 plate-52 plate-53 plate-54 plate-55 plate-56 plate-57 plate-58 plate-59 plate-60 plate-61 plate-62 plate-63 plate-64 plate-65 plate-66 plate-67 plate-68 plate-69 plate-70 plate-71 plate-72 plate-73 plate-74 plate-75 plate-76 plate-77 plate-78 plate-79 plate-80 plate-81 plate-82 plate-83 plate-84 plate-85 plate-86 plate-87 plate-88 plate-89 plate-90 plate-91 plate-92 plate-93 plate-94 plate-95 plate-96 plate-97 plate-98 plate-99 plate-100
		robot-1
		robot-loc buns-loc lettuce-loc meat-loc plate-loc
	)
	(:init
		(LOCATION robot-loc)
		(LOCATION buns-loc)
		(LOCATION lettuce-loc)
		(LOCATION meat-loc)
		(LOCATION plate-loc)
		(ROBOT robot-1)
		(BUNS buns-1)
		(BUNS buns-2)
		(BUNS buns-3)
		(BUNS buns-4)
		(BUNS buns-5)
		(BUNS buns-6)
		(BUNS buns-7)
		(BUNS buns-8)
		(BUNS buns-9)
		(BUNS buns-10)
		(BUNS buns-11)
		(BUNS buns-12)
		(BUNS buns-13)
		(BUNS buns-14)
		(BUNS buns-15)
		(BUNS buns-16)
		(BUNS buns-17)
		(BUNS buns-18)
		(BUNS buns-19)
		(BUNS buns-20)
		(BUNS buns-21)
		(BUNS buns-22)
		(BUNS buns-23)
		(BUNS buns-24)
		(BUNS buns-25)
		(BUNS buns-26)
		(BUNS buns-27)
		(BUNS buns-28)
		(BUNS buns-29)
		(BUNS buns-30)
		(BUNS buns-31)
		(BUNS buns-32)
		(BUNS buns-33)
		(BUNS buns-34)
		(BUNS buns-35)
		(BUNS buns-36)
		(BUNS buns-37)
		(BUNS buns-38)
		(BUNS buns-39)
		(BUNS buns-40)
		(BUNS buns-41)
		(BUNS buns-42)
		(BUNS buns-43)
		(BUNS buns-44)
		(BUNS buns-45)
		(BUNS buns-46)
		(BUNS buns-47)
		(BUNS buns-48)
		(BUNS buns-49)
		(BUNS buns-50)
		(BUNS buns-51)
		(BUNS buns-52)
		(BUNS buns-53)
		(BUNS buns-54)
		(BUNS buns-55)
		(BUNS buns-56)
		(BUNS buns-57)
		(BUNS buns-58)
		(BUNS buns-59)
		(BUNS buns-60)
		(BUNS buns-61)
		(BUNS buns-62)
		(BUNS buns-63)
		(BUNS buns-64)
		(BUNS buns-65)
		(BUNS buns-66)
		(BUNS buns-67)
		(BUNS buns-68)
		(BUNS buns-69)
		(BUNS buns-70)
		(BUNS buns-71)
		(BUNS buns-72)
		(BUNS buns-73)
		(BUNS buns-74)
		(BUNS buns-75)
		(BUNS buns-76)
		(BUNS buns-77)
		(BUNS buns-78)
		(BUNS buns-79)
		(BUNS buns-80)
		(BUNS buns-81)
		(BUNS buns-82)
		(BUNS buns-83)
		(BUNS buns-84)
		(BUNS buns-85)
		(BUNS buns-86)
		(BUNS buns-87)
		(BUNS buns-88)
		(BUNS buns-89)
		(BUNS buns-90)
		(BUNS buns-91)
		(BUNS buns-92)
		(BUNS buns-93)
		(BUNS buns-94)
		(BUNS buns-95)
		(BUNS buns-96)
		(BUNS buns-97)
		(BUNS buns-98)
		(BUNS buns-99)
		(BUNS buns-100)
		(LETTUCE lettuce-1)
		(LETTUCE lettuce-2)
		(LETTUCE lettuce-3)
		(LETTUCE lettuce-4)
		(LETTUCE lettuce-5)
		(LETTUCE lettuce-6)
		(LETTUCE lettuce-7)
		(LETTUCE lettuce-8)
		(LETTUCE lettuce-9)
		(LETTUCE lettuce-10)
		(LETTUCE lettuce-11)
		(LETTUCE lettuce-12)
		(LETTUCE lettuce-13)
		(LETTUCE lettuce-14)
		(LETTUCE lettuce-15)
		(LETTUCE lettuce-16)
		(LETTUCE lettuce-17)
		(LETTUCE lettuce-18)
		(LETTUCE lettuce-19)
		(LETTUCE lettuce-20)
		(LETTUCE lettuce-21)
		(LETTUCE lettuce-22)
		(LETTUCE lettuce-23)
		(LETTUCE lettuce-24)
		(LETTUCE lettuce-25)
		(LETTUCE lettuce-26)
		(LETTUCE lettuce-27)
		(LETTUCE lettuce-28)
		(LETTUCE lettuce-29)
		(LETTUCE lettuce-30)
		(LETTUCE lettuce-31)
		(LETTUCE lettuce-32)
		(LETTUCE lettuce-33)
		(LETTUCE lettuce-34)
		(LETTUCE lettuce-35)
		(LETTUCE lettuce-36)
		(LETTUCE lettuce-37)
		(LETTUCE lettuce-38)
		(LETTUCE lettuce-39)
		(LETTUCE lettuce-40)
		(LETTUCE lettuce-41)
		(LETTUCE lettuce-42)
		(LETTUCE lettuce-43)
		(LETTUCE lettuce-44)
		(LETTUCE lettuce-45)
		(LETTUCE lettuce-46)
		(LETTUCE lettuce-47)
		(LETTUCE lettuce-48)
		(LETTUCE lettuce-49)
		(LETTUCE lettuce-50)
		(LETTUCE lettuce-51)
		(LETTUCE lettuce-52)
		(LETTUCE lettuce-53)
		(LETTUCE lettuce-54)
		(LETTUCE lettuce-55)
		(LETTUCE lettuce-56)
		(LETTUCE lettuce-57)
		(LETTUCE lettuce-58)
		(LETTUCE lettuce-59)
		(LETTUCE lettuce-60)
		(LETTUCE lettuce-61)
		(LETTUCE lettuce-62)
		(LETTUCE lettuce-63)
		(LETTUCE lettuce-64)
		(LETTUCE lettuce-65)
		(LETTUCE lettuce-66)
		(LETTUCE lettuce-67)
		(LETTUCE lettuce-68)
		(LETTUCE lettuce-69)
		(LETTUCE lettuce-70)
		(LETTUCE lettuce-71)
		(LETTUCE lettuce-72)
		(LETTUCE lettuce-73)
		(LETTUCE lettuce-74)
		(LETTUCE lettuce-75)
		(LETTUCE lettuce-76)
		(LETTUCE lettuce-77)
		(LETTUCE lettuce-78)
		(LETTUCE lettuce-79)
		(LETTUCE lettuce-80)
		(LETTUCE lettuce-81)
		(LETTUCE lettuce-82)
		(LETTUCE lettuce-83)
		(LETTUCE lettuce-84)
		(LETTUCE lettuce-85)
		(LETTUCE lettuce-86)
		(LETTUCE lettuce-87)
		(LETTUCE lettuce-88)
		(LETTUCE lettuce-89)
		(LETTUCE lettuce-90)
		(LETTUCE lettuce-91)
		(LETTUCE lettuce-92)
		(LETTUCE lettuce-93)
		(LETTUCE lettuce-94)
		(LETTUCE lettuce-95)
		(LETTUCE lettuce-96)
		(LETTUCE lettuce-97)
		(LETTUCE lettuce-98)
		(LETTUCE lettuce-99)
		(LETTUCE lettuce-100)
		(MEAT meat-1)
		(MEAT meat-2)
		(MEAT meat-3)
		(MEAT meat-4)
		(MEAT meat-5)
		(MEAT meat-6)
		(MEAT meat-7)
		(MEAT meat-8)
		(MEAT meat-9)
		(MEAT meat-10)
		(MEAT meat-11)
		(MEAT meat-12)
		(MEAT meat-13)
		(MEAT meat-14)
		(MEAT meat-15)
		(MEAT meat-16)
		(MEAT meat-17)
		(MEAT meat-18)
		(MEAT meat-19)
		(MEAT meat-20)
		(MEAT meat-21)
		(MEAT meat-22)
		(MEAT meat-23)
		(MEAT meat-24)
		(MEAT meat-25)
		(MEAT meat-26)
		(MEAT meat-27)
		(MEAT meat-28)
		(MEAT meat-29)
		(MEAT meat-30)
		(MEAT meat-31)
		(MEAT meat-32)
		(MEAT meat-33)
		(MEAT meat-34)
		(MEAT meat-35)
		(MEAT meat-36)
		(MEAT meat-37)
		(MEAT meat-38)
		(MEAT meat-39)
		(MEAT meat-40)
		(MEAT meat-41)
		(MEAT meat-42)
		(MEAT meat-43)
		(MEAT meat-44)
		(MEAT meat-45)
		(MEAT meat-46)
		(MEAT meat-47)
		(MEAT meat-48)
		(MEAT meat-49)
		(MEAT meat-50)
		(MEAT meat-51)
		(MEAT meat-52)
		(MEAT meat-53)
		(MEAT meat-54)
		(MEAT meat-55)
		(MEAT meat-56)
		(MEAT meat-57)
		(MEAT meat-58)
		(MEAT meat-59)
		(MEAT meat-60)
		(MEAT meat-61)
		(MEAT meat-62)
		(MEAT meat-63)
		(MEAT meat-64)
		(MEAT meat-65)
		(MEAT meat-66)
		(MEAT meat-67)
		(MEAT meat-68)
		(MEAT meat-69)
		(MEAT meat-70)
		(MEAT meat-71)
		(MEAT meat-72)
		(MEAT meat-73)
		(MEAT meat-74)
		(MEAT meat-75)
		(MEAT meat-76)
		(MEAT meat-77)
		(MEAT meat-78)
		(MEAT meat-79)
		(MEAT meat-80)
		(MEAT meat-81)
		(MEAT meat-82)
		(MEAT meat-83)
		(MEAT meat-84)
		(MEAT meat-85)
		(MEAT meat-86)
		(MEAT meat-87)
		(MEAT meat-88)
		(MEAT meat-89)
		(MEAT meat-90)
		(MEAT meat-91)
		(MEAT meat-92)
		(MEAT meat-93)
		(MEAT meat-94)
		(MEAT meat-95)
		(MEAT meat-96)
		(MEAT meat-97)
		(MEAT meat-98)
		(MEAT meat-99)
		(MEAT meat-100)
		(PLATE plate-1)
		(PLATE plate-2)
		(PLATE plate-3)
		(PLATE plate-4)
		(PLATE plate-5)
		(PLATE plate-6)
		(PLATE plate-7)
		(PLATE plate-8)
		(PLATE plate-9)
		(PLATE plate-10)
		(PLATE plate-11)
		(PLATE plate-12)
		(PLATE plate-13)
		(PLATE plate-14)
		(PLATE plate-15)
		(PLATE plate-16)
		(PLATE plate-17)
		(PLATE plate-18)
		(PLATE plate-19)
		(PLATE plate-20)
		(PLATE plate-21)
		(PLATE plate-22)
		(PLATE plate-23)
		(PLATE plate-24)
		(PLATE plate-25)
		(PLATE plate-26)
		(PLATE plate-27)
		(PLATE plate-28)
		(PLATE plate-29)
		(PLATE plate-30)
		(PLATE plate-31)
		(PLATE plate-32)
		(PLATE plate-33)
		(PLATE plate-34)
		(PLATE plate-35)
		(PLATE plate-36)
		(PLATE plate-37)
		(PLATE plate-38)
		(PLATE plate-39)
		(PLATE plate-40)
		(PLATE plate-41)
		(PLATE plate-42)
		(PLATE plate-43)
		(PLATE plate-44)
		(PLATE plate-45)
		(PLATE plate-46)
		(PLATE plate-47)
		(PLATE plate-48)
		(PLATE plate-49)
		(PLATE plate-50)
		(PLATE plate-51)
		(PLATE plate-52)
		(PLATE plate-53)
		(PLATE plate-54)
		(PLATE plate-55)
		(PLATE plate-56)
		(PLATE plate-57)
		(PLATE plate-58)
		(PLATE plate-59)
		(PLATE plate-60)
		(PLATE plate-61)
		(PLATE plate-62)
		(PLATE plate-63)
		(PLATE plate-64)
		(PLATE plate-65)
		(PLATE plate-66)
		(PLATE plate-67)
		(PLATE plate-68)
		(PLATE plate-69)
		(PLATE plate-70)
		(PLATE plate-71)
		(PLATE plate-72)
		(PLATE plate-73)
		(PLATE plate-74)
		(PLATE plate-75)
		(PLATE plate-76)
		(PLATE plate-77)
		(PLATE plate-78)
		(PLATE plate-79)
		(PLATE plate-80)
		(PLATE plate-81)
		(PLATE plate-82)
		(PLATE plate-83)
		(PLATE plate-84)
		(PLATE plate-85)
		(PLATE plate-86)
		(PLATE plate-87)
		(PLATE plate-88)
		(PLATE plate-89)
		(PLATE plate-90)
		(PLATE plate-91)
		(PLATE plate-92)
		(PLATE plate-93)
		(PLATE plate-94)
		(PLATE plate-95)
		(PLATE plate-96)
		(PLATE plate-97)
		(PLATE plate-98)
		(PLATE plate-99)
		(PLATE plate-100)
		(at robot-1 robot-loc)
		(at buns-1 buns-loc)
		(at buns-2 buns-loc)
		(at buns-3 buns-loc)
		(at buns-4 buns-loc)
		(at buns-5 buns-loc)
		(at buns-6 buns-loc)
		(at buns-7 buns-loc)
		(at buns-8 buns-loc)
		(at buns-9 buns-loc)
		(at buns-10 buns-loc)
		(at buns-11 buns-loc)
		(at buns-12 buns-loc)
		(at buns-13 buns-loc)
		(at buns-14 buns-loc)
		(at buns-15 buns-loc)
		(at buns-16 buns-loc)
		(at buns-17 buns-loc)
		(at buns-18 buns-loc)
		(at buns-19 buns-loc)
		(at buns-20 buns-loc)
		(at buns-21 buns-loc)
		(at buns-22 buns-loc)
		(at buns-23 buns-loc)
		(at buns-24 buns-loc)
		(at buns-25 buns-loc)
		(at buns-26 buns-loc)
		(at buns-27 buns-loc)
		(at buns-28 buns-loc)
		(at buns-29 buns-loc)
		(at buns-30 buns-loc)
		(at buns-31 buns-loc)
		(at buns-32 buns-loc)
		(at buns-33 buns-loc)
		(at buns-34 buns-loc)
		(at buns-35 buns-loc)
		(at buns-36 buns-loc)
		(at buns-37 buns-loc)
		(at buns-38 buns-loc)
		(at buns-39 buns-loc)
		(at buns-40 buns-loc)
		(at buns-41 buns-loc)
		(at buns-42 buns-loc)
		(at buns-43 buns-loc)
		(at buns-44 buns-loc)
		(at buns-45 buns-loc)
		(at buns-46 buns-loc)
		(at buns-47 buns-loc)
		(at buns-48 buns-loc)
		(at buns-49 buns-loc)
		(at buns-50 buns-loc)
		(at buns-51 buns-loc)
		(at buns-52 buns-loc)
		(at buns-53 buns-loc)
		(at buns-54 buns-loc)
		(at buns-55 buns-loc)
		(at buns-56 buns-loc)
		(at buns-57 buns-loc)
		(at buns-58 buns-loc)
		(at buns-59 buns-loc)
		(at buns-60 buns-loc)
		(at buns-61 buns-loc)
		(at buns-62 buns-loc)
		(at buns-63 buns-loc)
		(at buns-64 buns-loc)
		(at buns-65 buns-loc)
		(at buns-66 buns-loc)
		(at buns-67 buns-loc)
		(at buns-68 buns-loc)
		(at buns-69 buns-loc)
		(at buns-70 buns-loc)
		(at buns-71 buns-loc)
		(at buns-72 buns-loc)
		(at buns-73 buns-loc)
		(at buns-74 buns-loc)
		(at buns-75 buns-loc)
		(at buns-76 buns-loc)
		(at buns-77 buns-loc)
		(at buns-78 buns-loc)
		(at buns-79 buns-loc)
		(at buns-80 buns-loc)
		(at buns-81 buns-loc)
		(at buns-82 buns-loc)
		(at buns-83 buns-loc)
		(at buns-84 buns-loc)
		(at buns-85 buns-loc)
		(at buns-86 buns-loc)
		(at buns-87 buns-loc)
		(at buns-88 buns-loc)
		(at buns-89 buns-loc)
		(at buns-90 buns-loc)
		(at buns-91 buns-loc)
		(at buns-92 buns-loc)
		(at buns-93 buns-loc)
		(at buns-94 buns-loc)
		(at buns-95 buns-loc)
		(at buns-96 buns-loc)
		(at buns-97 buns-loc)
		(at buns-98 buns-loc)
		(at buns-99 buns-loc)
		(at buns-100 buns-loc)
		(at lettuce-1 lettuce-loc)
		(at lettuce-2 lettuce-loc)
		(at lettuce-3 lettuce-loc)
		(at lettuce-4 lettuce-loc)
		(at lettuce-5 lettuce-loc)
		(at lettuce-6 lettuce-loc)
		(at lettuce-7 lettuce-loc)
		(at lettuce-8 lettuce-loc)
		(at lettuce-9 lettuce-loc)
		(at lettuce-10 lettuce-loc)
		(at lettuce-11 lettuce-loc)
		(at lettuce-12 lettuce-loc)
		(at lettuce-13 lettuce-loc)
		(at lettuce-14 lettuce-loc)
		(at lettuce-15 lettuce-loc)
		(at lettuce-16 lettuce-loc)
		(at lettuce-17 lettuce-loc)
		(at lettuce-18 lettuce-loc)
		(at lettuce-19 lettuce-loc)
		(at lettuce-20 lettuce-loc)
		(at lettuce-21 lettuce-loc)
		(at lettuce-22 lettuce-loc)
		(at lettuce-23 lettuce-loc)
		(at lettuce-24 lettuce-loc)
		(at lettuce-25 lettuce-loc)
		(at lettuce-26 lettuce-loc)
		(at lettuce-27 lettuce-loc)
		(at lettuce-28 lettuce-loc)
		(at lettuce-29 lettuce-loc)
		(at lettuce-30 lettuce-loc)
		(at lettuce-31 lettuce-loc)
		(at lettuce-32 lettuce-loc)
		(at lettuce-33 lettuce-loc)
		(at lettuce-34 lettuce-loc)
		(at lettuce-35 lettuce-loc)
		(at lettuce-36 lettuce-loc)
		(at lettuce-37 lettuce-loc)
		(at lettuce-38 lettuce-loc)
		(at lettuce-39 lettuce-loc)
		(at lettuce-40 lettuce-loc)
		(at lettuce-41 lettuce-loc)
		(at lettuce-42 lettuce-loc)
		(at lettuce-43 lettuce-loc)
		(at lettuce-44 lettuce-loc)
		(at lettuce-45 lettuce-loc)
		(at lettuce-46 lettuce-loc)
		(at lettuce-47 lettuce-loc)
		(at lettuce-48 lettuce-loc)
		(at lettuce-49 lettuce-loc)
		(at lettuce-50 lettuce-loc)
		(at lettuce-51 lettuce-loc)
		(at lettuce-52 lettuce-loc)
		(at lettuce-53 lettuce-loc)
		(at lettuce-54 lettuce-loc)
		(at lettuce-55 lettuce-loc)
		(at lettuce-56 lettuce-loc)
		(at lettuce-57 lettuce-loc)
		(at lettuce-58 lettuce-loc)
		(at lettuce-59 lettuce-loc)
		(at lettuce-60 lettuce-loc)
		(at lettuce-61 lettuce-loc)
		(at lettuce-62 lettuce-loc)
		(at lettuce-63 lettuce-loc)
		(at lettuce-64 lettuce-loc)
		(at lettuce-65 lettuce-loc)
		(at lettuce-66 lettuce-loc)
		(at lettuce-67 lettuce-loc)
		(at lettuce-68 lettuce-loc)
		(at lettuce-69 lettuce-loc)
		(at lettuce-70 lettuce-loc)
		(at lettuce-71 lettuce-loc)
		(at lettuce-72 lettuce-loc)
		(at lettuce-73 lettuce-loc)
		(at lettuce-74 lettuce-loc)
		(at lettuce-75 lettuce-loc)
		(at lettuce-76 lettuce-loc)
		(at lettuce-77 lettuce-loc)
		(at lettuce-78 lettuce-loc)
		(at lettuce-79 lettuce-loc)
		(at lettuce-80 lettuce-loc)
		(at lettuce-81 lettuce-loc)
		(at lettuce-82 lettuce-loc)
		(at lettuce-83 lettuce-loc)
		(at lettuce-84 lettuce-loc)
		(at lettuce-85 lettuce-loc)
		(at lettuce-86 lettuce-loc)
		(at lettuce-87 lettuce-loc)
		(at lettuce-88 lettuce-loc)
		(at lettuce-89 lettuce-loc)
		(at lettuce-90 lettuce-loc)
		(at lettuce-91 lettuce-loc)
		(at lettuce-92 lettuce-loc)
		(at lettuce-93 lettuce-loc)
		(at lettuce-94 lettuce-loc)
		(at lettuce-95 lettuce-loc)
		(at lettuce-96 lettuce-loc)
		(at lettuce-97 lettuce-loc)
		(at lettuce-98 lettuce-loc)
		(at lettuce-99 lettuce-loc)
		(at lettuce-100 lettuce-loc)
		(at meat-1 meat-loc)
		(at meat-2 meat-loc)
		(at meat-3 meat-loc)
		(at meat-4 meat-loc)
		(at meat-5 meat-loc)
		(at meat-6 meat-loc)
		(at meat-7 meat-loc)
		(at meat-8 meat-loc)
		(at meat-9 meat-loc)
		(at meat-10 meat-loc)
		(at meat-11 meat-loc)
		(at meat-12 meat-loc)
		(at meat-13 meat-loc)
		(at meat-14 meat-loc)
		(at meat-15 meat-loc)
		(at meat-16 meat-loc)
		(at meat-17 meat-loc)
		(at meat-18 meat-loc)
		(at meat-19 meat-loc)
		(at meat-20 meat-loc)
		(at meat-21 meat-loc)
		(at meat-22 meat-loc)
		(at meat-23 meat-loc)
		(at meat-24 meat-loc)
		(at meat-25 meat-loc)
		(at meat-26 meat-loc)
		(at meat-27 meat-loc)
		(at meat-28 meat-loc)
		(at meat-29 meat-loc)
		(at meat-30 meat-loc)
		(at meat-31 meat-loc)
		(at meat-32 meat-loc)
		(at meat-33 meat-loc)
		(at meat-34 meat-loc)
		(at meat-35 meat-loc)
		(at meat-36 meat-loc)
		(at meat-37 meat-loc)
		(at meat-38 meat-loc)
		(at meat-39 meat-loc)
		(at meat-40 meat-loc)
		(at meat-41 meat-loc)
		(at meat-42 meat-loc)
		(at meat-43 meat-loc)
		(at meat-44 meat-loc)
		(at meat-45 meat-loc)
		(at meat-46 meat-loc)
		(at meat-47 meat-loc)
		(at meat-48 meat-loc)
		(at meat-49 meat-loc)
		(at meat-50 meat-loc)
		(at meat-51 meat-loc)
		(at meat-52 meat-loc)
		(at meat-53 meat-loc)
		(at meat-54 meat-loc)
		(at meat-55 meat-loc)
		(at meat-56 meat-loc)
		(at meat-57 meat-loc)
		(at meat-58 meat-loc)
		(at meat-59 meat-loc)
		(at meat-60 meat-loc)
		(at meat-61 meat-loc)
		(at meat-62 meat-loc)
		(at meat-63 meat-loc)
		(at meat-64 meat-loc)
		(at meat-65 meat-loc)
		(at meat-66 meat-loc)
		(at meat-67 meat-loc)
		(at meat-68 meat-loc)
		(at meat-69 meat-loc)
		(at meat-70 meat-loc)
		(at meat-71 meat-loc)
		(at meat-72 meat-loc)
		(at meat-73 meat-loc)
		(at meat-74 meat-loc)
		(at meat-75 meat-loc)
		(at meat-76 meat-loc)
		(at meat-77 meat-loc)
		(at meat-78 meat-loc)
		(at meat-79 meat-loc)
		(at meat-80 meat-loc)
		(at meat-81 meat-loc)
		(at meat-82 meat-loc)
		(at meat-83 meat-loc)
		(at meat-84 meat-loc)
		(at meat-85 meat-loc)
		(at meat-86 meat-loc)
		(at meat-87 meat-loc)
		(at meat-88 meat-loc)
		(at meat-89 meat-loc)
		(at meat-90 meat-loc)
		(at meat-91 meat-loc)
		(at meat-92 meat-loc)
		(at meat-93 meat-loc)
		(at meat-94 meat-loc)
		(at meat-95 meat-loc)
		(at meat-96 meat-loc)
		(at meat-97 meat-loc)
		(at meat-98 meat-loc)
		(at meat-99 meat-loc)
		(at meat-100 meat-loc)
		(at plate-1 plate-loc)
		(at plate-2 plate-loc)
		(at plate-3 plate-loc)
		(at plate-4 plate-loc)
		(at plate-5 plate-loc)
		(at plate-6 plate-loc)
		(at plate-7 plate-loc)
		(at plate-8 plate-loc)
		(at plate-9 plate-loc)
		(at plate-10 plate-loc)
		(at plate-11 plate-loc)
		(at plate-12 plate-loc)
		(at plate-13 plate-loc)
		(at plate-14 plate-loc)
		(at plate-15 plate-loc)
		(at plate-16 plate-loc)
		(at plate-17 plate-loc)
		(at plate-18 plate-loc)
		(at plate-19 plate-loc)
		(at plate-20 plate-loc)
		(at plate-21 plate-loc)
		(at plate-22 plate-loc)
		(at plate-23 plate-loc)
		(at plate-24 plate-loc)
		(at plate-25 plate-loc)
		(at plate-26 plate-loc)
		(at plate-27 plate-loc)
		(at plate-28 plate-loc)
		(at plate-29 plate-loc)
		(at plate-30 plate-loc)
		(at plate-31 plate-loc)
		(at plate-32 plate-loc)
		(at plate-33 plate-loc)
		(at plate-34 plate-loc)
		(at plate-35 plate-loc)
		(at plate-36 plate-loc)
		(at plate-37 plate-loc)
		(at plate-38 plate-loc)
		(at plate-39 plate-loc)
		(at plate-40 plate-loc)
		(at plate-41 plate-loc)
		(at plate-42 plate-loc)
		(at plate-43 plate-loc)
		(at plate-44 plate-loc)
		(at plate-45 plate-loc)
		(at plate-46 plate-loc)
		(at plate-47 plate-loc)
		(at plate-48 plate-loc)
		(at plate-49 plate-loc)
		(at plate-50 plate-loc)
		(at plate-51 plate-loc)
		(at plate-52 plate-loc)
		(at plate-53 plate-loc)
		(at plate-54 plate-loc)
		(at plate-55 plate-loc)
		(at plate-56 plate-loc)
		(at plate-57 plate-loc)
		(at plate-58 plate-loc)
		(at plate-59 plate-loc)
		(at plate-60 plate-loc)
		(at plate-61 plate-loc)
		(at plate-62 plate-loc)
		(at plate-63 plate-loc)
		(at plate-64 plate-loc)
		(at plate-65 plate-loc)
		(at plate-66 plate-loc)
		(at plate-67 plate-loc)
		(at plate-68 plate-loc)
		(at plate-69 plate-loc)
		(at plate-70 plate-loc)
		(at plate-71 plate-loc)
		(at plate-72 plate-loc)
		(at plate-73 plate-loc)
		(at plate-74 plate-loc)
		(at plate-75 plate-loc)
		(at plate-76 plate-loc)
		(at plate-77 plate-loc)
		(at plate-78 plate-loc)
		(at plate-79 plate-loc)
		(at plate-80 plate-loc)
		(at plate-81 plate-loc)
		(at plate-82 plate-loc)
		(at plate-83 plate-loc)
		(at plate-84 plate-loc)
		(at plate-85 plate-loc)
		(at plate-86 plate-loc)
		(at plate-87 plate-loc)
		(at plate-88 plate-loc)
		(at plate-89 plate-loc)
		(at plate-90 plate-loc)
		(at plate-91 plate-loc)
		(at plate-92 plate-loc)
		(at plate-93 plate-loc)
		(at plate-94 plate-loc)
		(at plate-95 plate-loc)
		(at plate-96 plate-loc)
		(at plate-97 plate-loc)
		(at plate-98 plate-loc)
		(at plate-99 plate-loc)
		(at plate-100 plate-loc)
		(no-burger plate-1)
		(no-buns plate-1)
		(no-lettuce plate-1)
		(no-meat plate-1)
		(no-burger plate-2)
		(no-buns plate-2)
		(no-lettuce plate-2)
		(no-meat plate-2)
		(no-burger plate-3)
		(no-buns plate-3)
		(no-lettuce plate-3)
		(no-meat plate-3)
		(no-burger plate-4)
		(no-buns plate-4)
		(no-lettuce plate-4)
		(no-meat plate-4)
		(no-burger plate-5)
		(no-buns plate-5)
		(no-lettuce plate-5)
		(no-meat plate-5)
		(no-burger plate-6)
		(no-buns plate-6)
		(no-lettuce plate-6)
		(no-meat plate-6)
		(no-burger plate-7)
		(no-buns plate-7)
		(no-lettuce plate-7)
		(no-meat plate-7)
		(no-burger plate-8)
		(no-buns plate-8)
		(no-lettuce plate-8)
		(no-meat plate-8)
		(no-burger plate-9)
		(no-buns plate-9)
		(no-lettuce plate-9)
		(no-meat plate-9)
		(no-burger plate-10)
		(no-buns plate-10)
		(no-lettuce plate-10)
		(no-meat plate-10)
		(no-burger plate-11)
		(no-buns plate-11)
		(no-lettuce plate-11)
		(no-meat plate-11)
		(no-burger plate-12)
		(no-buns plate-12)
		(no-lettuce plate-12)
		(no-meat plate-12)
		(no-burger plate-13)
		(no-buns plate-13)
		(no-lettuce plate-13)
		(no-meat plate-13)
		(no-burger plate-14)
		(no-buns plate-14)
		(no-lettuce plate-14)
		(no-meat plate-14)
		(no-burger plate-15)
		(no-buns plate-15)
		(no-lettuce plate-15)
		(no-meat plate-15)
		(no-burger plate-16)
		(no-buns plate-16)
		(no-lettuce plate-16)
		(no-meat plate-16)
		(no-burger plate-17)
		(no-buns plate-17)
		(no-lettuce plate-17)
		(no-meat plate-17)
		(no-burger plate-18)
		(no-buns plate-18)
		(no-lettuce plate-18)
		(no-meat plate-18)
		(no-burger plate-19)
		(no-buns plate-19)
		(no-lettuce plate-19)
		(no-meat plate-19)
		(no-burger plate-20)
		(no-buns plate-20)
		(no-lettuce plate-20)
		(no-meat plate-20)
		(no-burger plate-21)
		(no-buns plate-21)
		(no-lettuce plate-21)
		(no-meat plate-21)
		(no-burger plate-22)
		(no-buns plate-22)
		(no-lettuce plate-22)
		(no-meat plate-22)
		(no-burger plate-23)
		(no-buns plate-23)
		(no-lettuce plate-23)
		(no-meat plate-23)
		(no-burger plate-24)
		(no-buns plate-24)
		(no-lettuce plate-24)
		(no-meat plate-24)
		(no-burger plate-25)
		(no-buns plate-25)
		(no-lettuce plate-25)
		(no-meat plate-25)
		(no-burger plate-26)
		(no-buns plate-26)
		(no-lettuce plate-26)
		(no-meat plate-26)
		(no-burger plate-27)
		(no-buns plate-27)
		(no-lettuce plate-27)
		(no-meat plate-27)
		(no-burger plate-28)
		(no-buns plate-28)
		(no-lettuce plate-28)
		(no-meat plate-28)
		(no-burger plate-29)
		(no-buns plate-29)
		(no-lettuce plate-29)
		(no-meat plate-29)
		(no-burger plate-30)
		(no-buns plate-30)
		(no-lettuce plate-30)
		(no-meat plate-30)
		(no-burger plate-31)
		(no-buns plate-31)
		(no-lettuce plate-31)
		(no-meat plate-31)
		(no-burger plate-32)
		(no-buns plate-32)
		(no-lettuce plate-32)
		(no-meat plate-32)
		(no-burger plate-33)
		(no-buns plate-33)
		(no-lettuce plate-33)
		(no-meat plate-33)
		(no-burger plate-34)
		(no-buns plate-34)
		(no-lettuce plate-34)
		(no-meat plate-34)
		(no-burger plate-35)
		(no-buns plate-35)
		(no-lettuce plate-35)
		(no-meat plate-35)
		(no-burger plate-36)
		(no-buns plate-36)
		(no-lettuce plate-36)
		(no-meat plate-36)
		(no-burger plate-37)
		(no-buns plate-37)
		(no-lettuce plate-37)
		(no-meat plate-37)
		(no-burger plate-38)
		(no-buns plate-38)
		(no-lettuce plate-38)
		(no-meat plate-38)
		(no-burger plate-39)
		(no-buns plate-39)
		(no-lettuce plate-39)
		(no-meat plate-39)
		(no-burger plate-40)
		(no-buns plate-40)
		(no-lettuce plate-40)
		(no-meat plate-40)
		(no-burger plate-41)
		(no-buns plate-41)
		(no-lettuce plate-41)
		(no-meat plate-41)
		(no-burger plate-42)
		(no-buns plate-42)
		(no-lettuce plate-42)
		(no-meat plate-42)
		(no-burger plate-43)
		(no-buns plate-43)
		(no-lettuce plate-43)
		(no-meat plate-43)
		(no-burger plate-44)
		(no-buns plate-44)
		(no-lettuce plate-44)
		(no-meat plate-44)
		(no-burger plate-45)
		(no-buns plate-45)
		(no-lettuce plate-45)
		(no-meat plate-45)
		(no-burger plate-46)
		(no-buns plate-46)
		(no-lettuce plate-46)
		(no-meat plate-46)
		(no-burger plate-47)
		(no-buns plate-47)
		(no-lettuce plate-47)
		(no-meat plate-47)
		(no-burger plate-48)
		(no-buns plate-48)
		(no-lettuce plate-48)
		(no-meat plate-48)
		(no-burger plate-49)
		(no-buns plate-49)
		(no-lettuce plate-49)
		(no-meat plate-49)
		(no-burger plate-50)
		(no-buns plate-50)
		(no-lettuce plate-50)
		(no-meat plate-50)
		(no-burger plate-51)
		(no-buns plate-51)
		(no-lettuce plate-51)
		(no-meat plate-51)
		(no-burger plate-52)
		(no-buns plate-52)
		(no-lettuce plate-52)
		(no-meat plate-52)
		(no-burger plate-53)
		(no-buns plate-53)
		(no-lettuce plate-53)
		(no-meat plate-53)
		(no-burger plate-54)
		(no-buns plate-54)
		(no-lettuce plate-54)
		(no-meat plate-54)
		(no-burger plate-55)
		(no-buns plate-55)
		(no-lettuce plate-55)
		(no-meat plate-55)
		(no-burger plate-56)
		(no-buns plate-56)
		(no-lettuce plate-56)
		(no-meat plate-56)
		(no-burger plate-57)
		(no-buns plate-57)
		(no-lettuce plate-57)
		(no-meat plate-57)
		(no-burger plate-58)
		(no-buns plate-58)
		(no-lettuce plate-58)
		(no-meat plate-58)
		(no-burger plate-59)
		(no-buns plate-59)
		(no-lettuce plate-59)
		(no-meat plate-59)
		(no-burger plate-60)
		(no-buns plate-60)
		(no-lettuce plate-60)
		(no-meat plate-60)
		(no-burger plate-61)
		(no-buns plate-61)
		(no-lettuce plate-61)
		(no-meat plate-61)
		(no-burger plate-62)
		(no-buns plate-62)
		(no-lettuce plate-62)
		(no-meat plate-62)
		(no-burger plate-63)
		(no-buns plate-63)
		(no-lettuce plate-63)
		(no-meat plate-63)
		(no-burger plate-64)
		(no-buns plate-64)
		(no-lettuce plate-64)
		(no-meat plate-64)
		(no-burger plate-65)
		(no-buns plate-65)
		(no-lettuce plate-65)
		(no-meat plate-65)
		(no-burger plate-66)
		(no-buns plate-66)
		(no-lettuce plate-66)
		(no-meat plate-66)
		(no-burger plate-67)
		(no-buns plate-67)
		(no-lettuce plate-67)
		(no-meat plate-67)
		(no-burger plate-68)
		(no-buns plate-68)
		(no-lettuce plate-68)
		(no-meat plate-68)
		(no-burger plate-69)
		(no-buns plate-69)
		(no-lettuce plate-69)
		(no-meat plate-69)
		(no-burger plate-70)
		(no-buns plate-70)
		(no-lettuce plate-70)
		(no-meat plate-70)
		(no-burger plate-71)
		(no-buns plate-71)
		(no-lettuce plate-71)
		(no-meat plate-71)
		(no-burger plate-72)
		(no-buns plate-72)
		(no-lettuce plate-72)
		(no-meat plate-72)
		(no-burger plate-73)
		(no-buns plate-73)
		(no-lettuce plate-73)
		(no-meat plate-73)
		(no-burger plate-74)
		(no-buns plate-74)
		(no-lettuce plate-74)
		(no-meat plate-74)
		(no-burger plate-75)
		(no-buns plate-75)
		(no-lettuce plate-75)
		(no-meat plate-75)
		(no-burger plate-76)
		(no-buns plate-76)
		(no-lettuce plate-76)
		(no-meat plate-76)
		(no-burger plate-77)
		(no-buns plate-77)
		(no-lettuce plate-77)
		(no-meat plate-77)
		(no-burger plate-78)
		(no-buns plate-78)
		(no-lettuce plate-78)
		(no-meat plate-78)
		(no-burger plate-79)
		(no-buns plate-79)
		(no-lettuce plate-79)
		(no-meat plate-79)
		(no-burger plate-80)
		(no-buns plate-80)
		(no-lettuce plate-80)
		(no-meat plate-80)
		(no-burger plate-81)
		(no-buns plate-81)
		(no-lettuce plate-81)
		(no-meat plate-81)
		(no-burger plate-82)
		(no-buns plate-82)
		(no-lettuce plate-82)
		(no-meat plate-82)
		(no-burger plate-83)
		(no-buns plate-83)
		(no-lettuce plate-83)
		(no-meat plate-83)
		(no-burger plate-84)
		(no-buns plate-84)
		(no-lettuce plate-84)
		(no-meat plate-84)
		(no-burger plate-85)
		(no-buns plate-85)
		(no-lettuce plate-85)
		(no-meat plate-85)
		(no-burger plate-86)
		(no-buns plate-86)
		(no-lettuce plate-86)
		(no-meat plate-86)
		(no-burger plate-87)
		(no-buns plate-87)
		(no-lettuce plate-87)
		(no-meat plate-87)
		(no-burger plate-88)
		(no-buns plate-88)
		(no-lettuce plate-88)
		(no-meat plate-88)
		(no-burger plate-89)
		(no-buns plate-89)
		(no-lettuce plate-89)
		(no-meat plate-89)
		(no-burger plate-90)
		(no-buns plate-90)
		(no-lettuce plate-90)
		(no-meat plate-90)
		(no-burger plate-91)
		(no-buns plate-91)
		(no-lettuce plate-91)
		(no-meat plate-91)
		(no-burger plate-92)
		(no-buns plate-92)
		(no-lettuce plate-92)
		(no-meat plate-92)
		(no-burger plate-93)
		(no-buns plate-93)
		(no-lettuce plate-93)
		(no-meat plate-93)
		(no-burger plate-94)
		(no-buns plate-94)
		(no-lettuce plate-94)
		(no-meat plate-94)
		(no-burger plate-95)
		(no-buns plate-95)
		(no-lettuce plate-95)
		(no-meat plate-95)
		(no-burger plate-96)
		(no-buns plate-96)
		(no-lettuce plate-96)
		(no-meat plate-96)
		(no-burger plate-97)
		(no-buns plate-97)
		(no-lettuce plate-97)
		(no-meat plate-97)
		(no-burger plate-98)
		(no-buns plate-98)
		(no-lettuce plate-98)
		(no-meat plate-98)
		(no-burger plate-99)
		(no-buns plate-99)
		(no-lettuce plate-99)
		(no-meat plate-99)
		(no-burger plate-100)
		(no-buns plate-100)
		(no-lettuce plate-100)
		(no-meat plate-100)
		(empty-hand robot-1)
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
