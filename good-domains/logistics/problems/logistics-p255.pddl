(define (problem logistics-p255)
	(:domain logistics)
	(:objects
		package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15 package-16 package-17 package-18 package-19 package-20 package-21 package-22 package-23 package-24 package-25 package-26 package-27 package-28 package-29 package-30 package-31 package-32 package-33 package-34 package-35 package-36 package-37 package-38 package-39 package-40 package-41 package-42 package-43 package-44 package-45 package-46 package-47 package-48 package-49 package-50 package-51 package-52 package-53 package-54 package-55 package-56 package-57 package-58 package-59 package-60 package-61 package-62 package-63 package-64 package-65 package-66 package-67 package-68 package-69 package-70 package-71 package-72 package-73 package-74 package-75 package-76 package-77 package-78 package-79 package-80 package-81 package-82 package-83 package-84 package-85 package-86 package-87 package-88 package-89 package-90 package-91 package-92 package-93 package-94 package-95 package-96 package-97 package-98 package-99 package-100 package-101 package-102 package-103 package-104 package-105 package-106 package-107 package-108 package-109 package-110 package-111 package-112 package-113 package-114 package-115 package-116 package-117 package-118 package-119 package-120 package-121 package-122 package-123 package-124 package-125 package-126 package-127 package-128 package-129 package-130 package-131 package-132 package-133 package-134 package-135 package-136 package-137 package-138 package-139 package-140 package-141 package-142 package-143 package-144 package-145 package-146 package-147 package-148 package-149 package-150 package-151 package-152 package-153 package-154 package-155 package-156 package-157 package-158 package-159 package-160 package-161 package-162 package-163 package-164 package-165 package-166 package-167 package-168 package-169 package-170 package-171 package-172 package-173 package-174 package-175 package-176 package-177 package-178 package-179 package-180 package-181 package-182 package-183 package-184 package-185 package-186 package-187 package-188 package-189 package-190 package-191 package-192 package-193 package-194 package-195 package-196 package-197 package-198 package-199 package-200 package-201 package-202 package-203 package-204 package-205 package-206 package-207 package-208 package-209 package-210 package-211 package-212 package-213 package-214 package-215 package-216 package-217 package-218 package-219 package-220 package-221 package-222 package-223 package-224 package-225 package-226 package-227 package-228 package-229 package-230 package-231 package-232 package-233 package-234 package-235 package-236 package-237 package-238 package-239 package-240 package-241 package-242 package-243 package-244 package-245 package-246 package-247 package-248 package-249 package-250 package-251 package-252 package-253 package-254 package-255 - package
		city-a city-b city-c - city
		truck-a truck-b truck-c - truck
		plane-1 plane-2 plane-3 - airplane
		house-a house-b house-c - location
		airport-a airport-b airport-c - location
		warehouse-a warehouse-b warehouse-c - location
	)
	(:init
		(AIRPORT airport-a)
		(AIRPORT airport-b)
		(AIRPORT airport-c)
		(in-city house-a city-a)
		(in-city airport-a city-a)
		(in-city warehouse-a city-a)
		(at plane-1 airport-a)
		(at truck-a warehouse-a)
		(in-city house-b city-b)
		(in-city airport-b city-b)
		(in-city warehouse-b city-b)
		(at plane-2 airport-b)
		(at truck-b warehouse-b)
		(in-city house-c city-c)
		(in-city airport-c city-c)
		(in-city warehouse-c city-c)
		(at plane-3 airport-c)
		(at truck-c warehouse-c)
		(at package-1 warehouse-a)
		(at package-2 warehouse-b)
		(at package-3 warehouse-c)
		(at package-4 warehouse-a)
		(at package-5 warehouse-b)
		(at package-6 warehouse-c)
		(at package-7 warehouse-a)
		(at package-8 warehouse-b)
		(at package-9 warehouse-c)
		(at package-10 warehouse-a)
		(at package-11 warehouse-b)
		(at package-12 warehouse-c)
		(at package-13 warehouse-a)
		(at package-14 warehouse-b)
		(at package-15 warehouse-c)
		(at package-16 warehouse-a)
		(at package-17 warehouse-b)
		(at package-18 warehouse-c)
		(at package-19 warehouse-a)
		(at package-20 warehouse-b)
		(at package-21 warehouse-c)
		(at package-22 warehouse-a)
		(at package-23 warehouse-b)
		(at package-24 warehouse-c)
		(at package-25 warehouse-a)
		(at package-26 warehouse-b)
		(at package-27 warehouse-c)
		(at package-28 warehouse-a)
		(at package-29 warehouse-b)
		(at package-30 warehouse-c)
		(at package-31 warehouse-a)
		(at package-32 warehouse-b)
		(at package-33 warehouse-c)
		(at package-34 warehouse-a)
		(at package-35 warehouse-b)
		(at package-36 warehouse-c)
		(at package-37 warehouse-a)
		(at package-38 warehouse-b)
		(at package-39 warehouse-c)
		(at package-40 warehouse-a)
		(at package-41 warehouse-b)
		(at package-42 warehouse-c)
		(at package-43 warehouse-a)
		(at package-44 warehouse-b)
		(at package-45 warehouse-c)
		(at package-46 warehouse-a)
		(at package-47 warehouse-b)
		(at package-48 warehouse-c)
		(at package-49 warehouse-a)
		(at package-50 warehouse-b)
		(at package-51 warehouse-c)
		(at package-52 warehouse-a)
		(at package-53 warehouse-b)
		(at package-54 warehouse-c)
		(at package-55 warehouse-a)
		(at package-56 warehouse-b)
		(at package-57 warehouse-c)
		(at package-58 warehouse-a)
		(at package-59 warehouse-b)
		(at package-60 warehouse-c)
		(at package-61 warehouse-a)
		(at package-62 warehouse-b)
		(at package-63 warehouse-c)
		(at package-64 warehouse-a)
		(at package-65 warehouse-b)
		(at package-66 warehouse-c)
		(at package-67 warehouse-a)
		(at package-68 warehouse-b)
		(at package-69 warehouse-c)
		(at package-70 warehouse-a)
		(at package-71 warehouse-b)
		(at package-72 warehouse-c)
		(at package-73 warehouse-a)
		(at package-74 warehouse-b)
		(at package-75 warehouse-c)
		(at package-76 warehouse-a)
		(at package-77 warehouse-b)
		(at package-78 warehouse-c)
		(at package-79 warehouse-a)
		(at package-80 warehouse-b)
		(at package-81 warehouse-c)
		(at package-82 warehouse-a)
		(at package-83 warehouse-b)
		(at package-84 warehouse-c)
		(at package-85 warehouse-a)
		(at package-86 warehouse-b)
		(at package-87 warehouse-c)
		(at package-88 warehouse-a)
		(at package-89 warehouse-b)
		(at package-90 warehouse-c)
		(at package-91 warehouse-a)
		(at package-92 warehouse-b)
		(at package-93 warehouse-c)
		(at package-94 warehouse-a)
		(at package-95 warehouse-b)
		(at package-96 warehouse-c)
		(at package-97 warehouse-a)
		(at package-98 warehouse-b)
		(at package-99 warehouse-c)
		(at package-100 warehouse-a)
		(at package-101 warehouse-b)
		(at package-102 warehouse-c)
		(at package-103 warehouse-a)
		(at package-104 warehouse-b)
		(at package-105 warehouse-c)
		(at package-106 warehouse-a)
		(at package-107 warehouse-b)
		(at package-108 warehouse-c)
		(at package-109 warehouse-a)
		(at package-110 warehouse-b)
		(at package-111 warehouse-c)
		(at package-112 warehouse-a)
		(at package-113 warehouse-b)
		(at package-114 warehouse-c)
		(at package-115 warehouse-a)
		(at package-116 warehouse-b)
		(at package-117 warehouse-c)
		(at package-118 warehouse-a)
		(at package-119 warehouse-b)
		(at package-120 warehouse-c)
		(at package-121 warehouse-a)
		(at package-122 warehouse-b)
		(at package-123 warehouse-c)
		(at package-124 warehouse-a)
		(at package-125 warehouse-b)
		(at package-126 warehouse-c)
		(at package-127 warehouse-a)
		(at package-128 warehouse-b)
		(at package-129 warehouse-c)
		(at package-130 warehouse-a)
		(at package-131 warehouse-b)
		(at package-132 warehouse-c)
		(at package-133 warehouse-a)
		(at package-134 warehouse-b)
		(at package-135 warehouse-c)
		(at package-136 warehouse-a)
		(at package-137 warehouse-b)
		(at package-138 warehouse-c)
		(at package-139 warehouse-a)
		(at package-140 warehouse-b)
		(at package-141 warehouse-c)
		(at package-142 warehouse-a)
		(at package-143 warehouse-b)
		(at package-144 warehouse-c)
		(at package-145 warehouse-a)
		(at package-146 warehouse-b)
		(at package-147 warehouse-c)
		(at package-148 warehouse-a)
		(at package-149 warehouse-b)
		(at package-150 warehouse-c)
		(at package-151 warehouse-a)
		(at package-152 warehouse-b)
		(at package-153 warehouse-c)
		(at package-154 warehouse-a)
		(at package-155 warehouse-b)
		(at package-156 warehouse-c)
		(at package-157 warehouse-a)
		(at package-158 warehouse-b)
		(at package-159 warehouse-c)
		(at package-160 warehouse-a)
		(at package-161 warehouse-b)
		(at package-162 warehouse-c)
		(at package-163 warehouse-a)
		(at package-164 warehouse-b)
		(at package-165 warehouse-c)
		(at package-166 warehouse-a)
		(at package-167 warehouse-b)
		(at package-168 warehouse-c)
		(at package-169 warehouse-a)
		(at package-170 warehouse-b)
		(at package-171 warehouse-c)
		(at package-172 warehouse-a)
		(at package-173 warehouse-b)
		(at package-174 warehouse-c)
		(at package-175 warehouse-a)
		(at package-176 warehouse-b)
		(at package-177 warehouse-c)
		(at package-178 warehouse-a)
		(at package-179 warehouse-b)
		(at package-180 warehouse-c)
		(at package-181 warehouse-a)
		(at package-182 warehouse-b)
		(at package-183 warehouse-c)
		(at package-184 warehouse-a)
		(at package-185 warehouse-b)
		(at package-186 warehouse-c)
		(at package-187 warehouse-a)
		(at package-188 warehouse-b)
		(at package-189 warehouse-c)
		(at package-190 warehouse-a)
		(at package-191 warehouse-b)
		(at package-192 warehouse-c)
		(at package-193 warehouse-a)
		(at package-194 warehouse-b)
		(at package-195 warehouse-c)
		(at package-196 warehouse-a)
		(at package-197 warehouse-b)
		(at package-198 warehouse-c)
		(at package-199 warehouse-a)
		(at package-200 warehouse-b)
		(at package-201 warehouse-c)
		(at package-202 warehouse-a)
		(at package-203 warehouse-b)
		(at package-204 warehouse-c)
		(at package-205 warehouse-a)
		(at package-206 warehouse-b)
		(at package-207 warehouse-c)
		(at package-208 warehouse-a)
		(at package-209 warehouse-b)
		(at package-210 warehouse-c)
		(at package-211 warehouse-a)
		(at package-212 warehouse-b)
		(at package-213 warehouse-c)
		(at package-214 warehouse-a)
		(at package-215 warehouse-b)
		(at package-216 warehouse-c)
		(at package-217 warehouse-a)
		(at package-218 warehouse-b)
		(at package-219 warehouse-c)
		(at package-220 warehouse-a)
		(at package-221 warehouse-b)
		(at package-222 warehouse-c)
		(at package-223 warehouse-a)
		(at package-224 warehouse-b)
		(at package-225 warehouse-c)
		(at package-226 warehouse-a)
		(at package-227 warehouse-b)
		(at package-228 warehouse-c)
		(at package-229 warehouse-a)
		(at package-230 warehouse-b)
		(at package-231 warehouse-c)
		(at package-232 warehouse-a)
		(at package-233 warehouse-b)
		(at package-234 warehouse-c)
		(at package-235 warehouse-a)
		(at package-236 warehouse-b)
		(at package-237 warehouse-c)
		(at package-238 warehouse-a)
		(at package-239 warehouse-b)
		(at package-240 warehouse-c)
		(at package-241 warehouse-a)
		(at package-242 warehouse-b)
		(at package-243 warehouse-c)
		(at package-244 warehouse-a)
		(at package-245 warehouse-b)
		(at package-246 warehouse-c)
		(at package-247 warehouse-a)
		(at package-248 warehouse-b)
		(at package-249 warehouse-c)
		(at package-250 warehouse-a)
		(at package-251 warehouse-b)
		(at package-252 warehouse-c)
		(at package-253 warehouse-a)
		(at package-254 warehouse-b)
		(at package-255 warehouse-c)
	)
	(:goal (and
		(at package-1 house-b)
		(at package-2 house-c)
		(at package-3 house-a)
		(at package-4 house-b)
		(at package-5 house-c)
		(at package-6 house-a)
		(at package-7 house-b)
		(at package-8 house-c)
		(at package-9 house-a)
		(at package-10 house-b)
		(at package-11 house-c)
		(at package-12 house-a)
		(at package-13 house-b)
		(at package-14 house-c)
		(at package-15 house-a)
		(at package-16 house-b)
		(at package-17 house-c)
		(at package-18 house-a)
		(at package-19 house-b)
		(at package-20 house-c)
		(at package-21 house-a)
		(at package-22 house-b)
		(at package-23 house-c)
		(at package-24 house-a)
		(at package-25 house-b)
		(at package-26 house-c)
		(at package-27 house-a)
		(at package-28 house-b)
		(at package-29 house-c)
		(at package-30 house-a)
		(at package-31 house-b)
		(at package-32 house-c)
		(at package-33 house-a)
		(at package-34 house-b)
		(at package-35 house-c)
		(at package-36 house-a)
		(at package-37 house-b)
		(at package-38 house-c)
		(at package-39 house-a)
		(at package-40 house-b)
		(at package-41 house-c)
		(at package-42 house-a)
		(at package-43 house-b)
		(at package-44 house-c)
		(at package-45 house-a)
		(at package-46 house-b)
		(at package-47 house-c)
		(at package-48 house-a)
		(at package-49 house-b)
		(at package-50 house-c)
		(at package-51 house-a)
		(at package-52 house-b)
		(at package-53 house-c)
		(at package-54 house-a)
		(at package-55 house-b)
		(at package-56 house-c)
		(at package-57 house-a)
		(at package-58 house-b)
		(at package-59 house-c)
		(at package-60 house-a)
		(at package-61 house-b)
		(at package-62 house-c)
		(at package-63 house-a)
		(at package-64 house-b)
		(at package-65 house-c)
		(at package-66 house-a)
		(at package-67 house-b)
		(at package-68 house-c)
		(at package-69 house-a)
		(at package-70 house-b)
		(at package-71 house-c)
		(at package-72 house-a)
		(at package-73 house-b)
		(at package-74 house-c)
		(at package-75 house-a)
		(at package-76 house-b)
		(at package-77 house-c)
		(at package-78 house-a)
		(at package-79 house-b)
		(at package-80 house-c)
		(at package-81 house-a)
		(at package-82 house-b)
		(at package-83 house-c)
		(at package-84 house-a)
		(at package-85 house-b)
		(at package-86 house-c)
		(at package-87 house-a)
		(at package-88 house-b)
		(at package-89 house-c)
		(at package-90 house-a)
		(at package-91 house-b)
		(at package-92 house-c)
		(at package-93 house-a)
		(at package-94 house-b)
		(at package-95 house-c)
		(at package-96 house-a)
		(at package-97 house-b)
		(at package-98 house-c)
		(at package-99 house-a)
		(at package-100 house-b)
		(at package-101 house-c)
		(at package-102 house-a)
		(at package-103 house-b)
		(at package-104 house-c)
		(at package-105 house-a)
		(at package-106 house-b)
		(at package-107 house-c)
		(at package-108 house-a)
		(at package-109 house-b)
		(at package-110 house-c)
		(at package-111 house-a)
		(at package-112 house-b)
		(at package-113 house-c)
		(at package-114 house-a)
		(at package-115 house-b)
		(at package-116 house-c)
		(at package-117 house-a)
		(at package-118 house-b)
		(at package-119 house-c)
		(at package-120 house-a)
		(at package-121 house-b)
		(at package-122 house-c)
		(at package-123 house-a)
		(at package-124 house-b)
		(at package-125 house-c)
		(at package-126 house-a)
		(at package-127 house-b)
		(at package-128 house-c)
		(at package-129 house-a)
		(at package-130 house-b)
		(at package-131 house-c)
		(at package-132 house-a)
		(at package-133 house-b)
		(at package-134 house-c)
		(at package-135 house-a)
		(at package-136 house-b)
		(at package-137 house-c)
		(at package-138 house-a)
		(at package-139 house-b)
		(at package-140 house-c)
		(at package-141 house-a)
		(at package-142 house-b)
		(at package-143 house-c)
		(at package-144 house-a)
		(at package-145 house-b)
		(at package-146 house-c)
		(at package-147 house-a)
		(at package-148 house-b)
		(at package-149 house-c)
		(at package-150 house-a)
		(at package-151 house-b)
		(at package-152 house-c)
		(at package-153 house-a)
		(at package-154 house-b)
		(at package-155 house-c)
		(at package-156 house-a)
		(at package-157 house-b)
		(at package-158 house-c)
		(at package-159 house-a)
		(at package-160 house-b)
		(at package-161 house-c)
		(at package-162 house-a)
		(at package-163 house-b)
		(at package-164 house-c)
		(at package-165 house-a)
		(at package-166 house-b)
		(at package-167 house-c)
		(at package-168 house-a)
		(at package-169 house-b)
		(at package-170 house-c)
		(at package-171 house-a)
		(at package-172 house-b)
		(at package-173 house-c)
		(at package-174 house-a)
		(at package-175 house-b)
		(at package-176 house-c)
		(at package-177 house-a)
		(at package-178 house-b)
		(at package-179 house-c)
		(at package-180 house-a)
		(at package-181 house-b)
		(at package-182 house-c)
		(at package-183 house-a)
		(at package-184 house-b)
		(at package-185 house-c)
		(at package-186 house-a)
		(at package-187 house-b)
		(at package-188 house-c)
		(at package-189 house-a)
		(at package-190 house-b)
		(at package-191 house-c)
		(at package-192 house-a)
		(at package-193 house-b)
		(at package-194 house-c)
		(at package-195 house-a)
		(at package-196 house-b)
		(at package-197 house-c)
		(at package-198 house-a)
		(at package-199 house-b)
		(at package-200 house-c)
		(at package-201 house-a)
		(at package-202 house-b)
		(at package-203 house-c)
		(at package-204 house-a)
		(at package-205 house-b)
		(at package-206 house-c)
		(at package-207 house-a)
		(at package-208 house-b)
		(at package-209 house-c)
		(at package-210 house-a)
		(at package-211 house-b)
		(at package-212 house-c)
		(at package-213 house-a)
		(at package-214 house-b)
		(at package-215 house-c)
		(at package-216 house-a)
		(at package-217 house-b)
		(at package-218 house-c)
		(at package-219 house-a)
		(at package-220 house-b)
		(at package-221 house-c)
		(at package-222 house-a)
		(at package-223 house-b)
		(at package-224 house-c)
		(at package-225 house-a)
		(at package-226 house-b)
		(at package-227 house-c)
		(at package-228 house-a)
		(at package-229 house-b)
		(at package-230 house-c)
		(at package-231 house-a)
		(at package-232 house-b)
		(at package-233 house-c)
		(at package-234 house-a)
		(at package-235 house-b)
		(at package-236 house-c)
		(at package-237 house-a)
		(at package-238 house-b)
		(at package-239 house-c)
		(at package-240 house-a)
		(at package-241 house-b)
		(at package-242 house-c)
		(at package-243 house-a)
		(at package-244 house-b)
		(at package-245 house-c)
		(at package-246 house-a)
		(at package-247 house-b)
		(at package-248 house-c)
		(at package-249 house-a)
		(at package-250 house-b)
		(at package-251 house-c)
		(at package-252 house-a)
		(at package-253 house-b)
		(at package-254 house-c)
		(at package-255 house-a)
		)
	)
)
