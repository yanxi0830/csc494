(define (problem driverlog-capacity-t1-d1-p320)
	(:domain driverlog-capacity)
	(:objects
		driver-1 - driver
		truck-1 - truck
		package-1 package-2 package-3 package-4 package-5 package-6 package-7 package-8 package-9 package-10 package-11 package-12 package-13 package-14 package-15 package-16 package-17 package-18 package-19 package-20 package-21 package-22 package-23 package-24 package-25 package-26 package-27 package-28 package-29 package-30 package-31 package-32 package-33 package-34 package-35 package-36 package-37 package-38 package-39 package-40 package-41 package-42 package-43 package-44 package-45 package-46 package-47 package-48 package-49 package-50 package-51 package-52 package-53 package-54 package-55 package-56 package-57 package-58 package-59 package-60 package-61 package-62 package-63 package-64 package-65 package-66 package-67 package-68 package-69 package-70 package-71 package-72 package-73 package-74 package-75 package-76 package-77 package-78 package-79 package-80 package-81 package-82 package-83 package-84 package-85 package-86 package-87 package-88 package-89 package-90 package-91 package-92 package-93 package-94 package-95 package-96 package-97 package-98 package-99 package-100 package-101 package-102 package-103 package-104 package-105 package-106 package-107 package-108 package-109 package-110 package-111 package-112 package-113 package-114 package-115 package-116 package-117 package-118 package-119 package-120 package-121 package-122 package-123 package-124 package-125 package-126 package-127 package-128 package-129 package-130 package-131 package-132 package-133 package-134 package-135 package-136 package-137 package-138 package-139 package-140 package-141 package-142 package-143 package-144 package-145 package-146 package-147 package-148 package-149 package-150 package-151 package-152 package-153 package-154 package-155 package-156 package-157 package-158 package-159 package-160 package-161 package-162 package-163 package-164 package-165 package-166 package-167 package-168 package-169 package-170 package-171 package-172 package-173 package-174 package-175 package-176 package-177 package-178 package-179 package-180 package-181 package-182 package-183 package-184 package-185 package-186 package-187 package-188 package-189 package-190 package-191 package-192 package-193 package-194 package-195 package-196 package-197 package-198 package-199 package-200 package-201 package-202 package-203 package-204 package-205 package-206 package-207 package-208 package-209 package-210 package-211 package-212 package-213 package-214 package-215 package-216 package-217 package-218 package-219 package-220 package-221 package-222 package-223 package-224 package-225 package-226 package-227 package-228 package-229 package-230 package-231 package-232 package-233 package-234 package-235 package-236 package-237 package-238 package-239 package-240 package-241 package-242 package-243 package-244 package-245 package-246 package-247 package-248 package-249 package-250 package-251 package-252 package-253 package-254 package-255 package-256 package-257 package-258 package-259 package-260 package-261 package-262 package-263 package-264 package-265 package-266 package-267 package-268 package-269 package-270 package-271 package-272 package-273 package-274 package-275 package-276 package-277 package-278 package-279 package-280 package-281 package-282 package-283 package-284 package-285 package-286 package-287 package-288 package-289 package-290 package-291 package-292 package-293 package-294 package-295 package-296 package-297 package-298 package-299 package-300 package-301 package-302 package-303 package-304 package-305 package-306 package-307 package-308 package-309 package-310 package-311 package-312 package-313 package-314 package-315 package-316 package-317 package-318 package-319 package-320 - package
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
		(at package-121 L1)
		(at package-122 L1)
		(at package-123 L1)
		(at package-124 L1)
		(at package-125 L1)
		(at package-126 L1)
		(at package-127 L1)
		(at package-128 L1)
		(at package-129 L1)
		(at package-130 L1)
		(at package-131 L1)
		(at package-132 L1)
		(at package-133 L1)
		(at package-134 L1)
		(at package-135 L1)
		(at package-136 L1)
		(at package-137 L1)
		(at package-138 L1)
		(at package-139 L1)
		(at package-140 L1)
		(at package-141 L1)
		(at package-142 L1)
		(at package-143 L1)
		(at package-144 L1)
		(at package-145 L1)
		(at package-146 L1)
		(at package-147 L1)
		(at package-148 L1)
		(at package-149 L1)
		(at package-150 L1)
		(at package-151 L1)
		(at package-152 L1)
		(at package-153 L1)
		(at package-154 L1)
		(at package-155 L1)
		(at package-156 L1)
		(at package-157 L1)
		(at package-158 L1)
		(at package-159 L1)
		(at package-160 L1)
		(at package-161 L1)
		(at package-162 L1)
		(at package-163 L1)
		(at package-164 L1)
		(at package-165 L1)
		(at package-166 L1)
		(at package-167 L1)
		(at package-168 L1)
		(at package-169 L1)
		(at package-170 L1)
		(at package-171 L1)
		(at package-172 L1)
		(at package-173 L1)
		(at package-174 L1)
		(at package-175 L1)
		(at package-176 L1)
		(at package-177 L1)
		(at package-178 L1)
		(at package-179 L1)
		(at package-180 L1)
		(at package-181 L1)
		(at package-182 L1)
		(at package-183 L1)
		(at package-184 L1)
		(at package-185 L1)
		(at package-186 L1)
		(at package-187 L1)
		(at package-188 L1)
		(at package-189 L1)
		(at package-190 L1)
		(at package-191 L1)
		(at package-192 L1)
		(at package-193 L1)
		(at package-194 L1)
		(at package-195 L1)
		(at package-196 L1)
		(at package-197 L1)
		(at package-198 L1)
		(at package-199 L1)
		(at package-200 L1)
		(at package-201 L1)
		(at package-202 L1)
		(at package-203 L1)
		(at package-204 L1)
		(at package-205 L1)
		(at package-206 L1)
		(at package-207 L1)
		(at package-208 L1)
		(at package-209 L1)
		(at package-210 L1)
		(at package-211 L1)
		(at package-212 L1)
		(at package-213 L1)
		(at package-214 L1)
		(at package-215 L1)
		(at package-216 L1)
		(at package-217 L1)
		(at package-218 L1)
		(at package-219 L1)
		(at package-220 L1)
		(at package-221 L1)
		(at package-222 L1)
		(at package-223 L1)
		(at package-224 L1)
		(at package-225 L1)
		(at package-226 L1)
		(at package-227 L1)
		(at package-228 L1)
		(at package-229 L1)
		(at package-230 L1)
		(at package-231 L1)
		(at package-232 L1)
		(at package-233 L1)
		(at package-234 L1)
		(at package-235 L1)
		(at package-236 L1)
		(at package-237 L1)
		(at package-238 L1)
		(at package-239 L1)
		(at package-240 L1)
		(at package-241 L1)
		(at package-242 L1)
		(at package-243 L1)
		(at package-244 L1)
		(at package-245 L1)
		(at package-246 L1)
		(at package-247 L1)
		(at package-248 L1)
		(at package-249 L1)
		(at package-250 L1)
		(at package-251 L1)
		(at package-252 L1)
		(at package-253 L1)
		(at package-254 L1)
		(at package-255 L1)
		(at package-256 L1)
		(at package-257 L1)
		(at package-258 L1)
		(at package-259 L1)
		(at package-260 L1)
		(at package-261 L1)
		(at package-262 L1)
		(at package-263 L1)
		(at package-264 L1)
		(at package-265 L1)
		(at package-266 L1)
		(at package-267 L1)
		(at package-268 L1)
		(at package-269 L1)
		(at package-270 L1)
		(at package-271 L1)
		(at package-272 L1)
		(at package-273 L1)
		(at package-274 L1)
		(at package-275 L1)
		(at package-276 L1)
		(at package-277 L1)
		(at package-278 L1)
		(at package-279 L1)
		(at package-280 L1)
		(at package-281 L1)
		(at package-282 L1)
		(at package-283 L1)
		(at package-284 L1)
		(at package-285 L1)
		(at package-286 L1)
		(at package-287 L1)
		(at package-288 L1)
		(at package-289 L1)
		(at package-290 L1)
		(at package-291 L1)
		(at package-292 L1)
		(at package-293 L1)
		(at package-294 L1)
		(at package-295 L1)
		(at package-296 L1)
		(at package-297 L1)
		(at package-298 L1)
		(at package-299 L1)
		(at package-300 L1)
		(at package-301 L1)
		(at package-302 L1)
		(at package-303 L1)
		(at package-304 L1)
		(at package-305 L1)
		(at package-306 L1)
		(at package-307 L1)
		(at package-308 L1)
		(at package-309 L1)
		(at package-310 L1)
		(at package-311 L1)
		(at package-312 L1)
		(at package-313 L1)
		(at package-314 L1)
		(at package-315 L1)
		(at package-316 L1)
		(at package-317 L1)
		(at package-318 L1)
		(at package-319 L1)
		(at package-320 L1)
		(capacity-predecessor capacity-0 capacity-1)
		(capacity truck-1 capacity-1)
	)
	(:goal (and
		(at package-1 G2)
		(at package-2 G2)
		(at package-3 G2)
		(at package-4 G1)
		(at package-5 G1)
		(at package-6 G1)
		(at package-7 G1)
		(at package-8 G2)
		(at package-9 G2)
		(at package-10 G2)
		(at package-11 G2)
		(at package-12 G2)
		(at package-13 G2)
		(at package-14 G2)
		(at package-15 G2)
		(at package-16 G2)
		(at package-17 G2)
		(at package-18 G1)
		(at package-19 G1)
		(at package-20 G1)
		(at package-21 G2)
		(at package-22 G1)
		(at package-23 G1)
		(at package-24 G1)
		(at package-25 G2)
		(at package-26 G1)
		(at package-27 G2)
		(at package-28 G1)
		(at package-29 G1)
		(at package-30 G1)
		(at package-31 G2)
		(at package-32 G1)
		(at package-33 G2)
		(at package-34 G1)
		(at package-35 G1)
		(at package-36 G1)
		(at package-37 G1)
		(at package-38 G1)
		(at package-39 G1)
		(at package-40 G2)
		(at package-41 G2)
		(at package-42 G1)
		(at package-43 G1)
		(at package-44 G2)
		(at package-45 G2)
		(at package-46 G2)
		(at package-47 G2)
		(at package-48 G2)
		(at package-49 G2)
		(at package-50 G1)
		(at package-51 G1)
		(at package-52 G1)
		(at package-53 G2)
		(at package-54 G2)
		(at package-55 G1)
		(at package-56 G2)
		(at package-57 G1)
		(at package-58 G1)
		(at package-59 G2)
		(at package-60 G2)
		(at package-61 G1)
		(at package-62 G2)
		(at package-63 G1)
		(at package-64 G1)
		(at package-65 G2)
		(at package-66 G1)
		(at package-67 G2)
		(at package-68 G2)
		(at package-69 G1)
		(at package-70 G1)
		(at package-71 G2)
		(at package-72 G2)
		(at package-73 G1)
		(at package-74 G2)
		(at package-75 G2)
		(at package-76 G2)
		(at package-77 G1)
		(at package-78 G2)
		(at package-79 G1)
		(at package-80 G1)
		(at package-81 G1)
		(at package-82 G1)
		(at package-83 G1)
		(at package-84 G1)
		(at package-85 G2)
		(at package-86 G1)
		(at package-87 G2)
		(at package-88 G1)
		(at package-89 G1)
		(at package-90 G1)
		(at package-91 G1)
		(at package-92 G1)
		(at package-93 G1)
		(at package-94 G1)
		(at package-95 G2)
		(at package-96 G1)
		(at package-97 G1)
		(at package-98 G1)
		(at package-99 G1)
		(at package-100 G1)
		(at package-101 G1)
		(at package-102 G1)
		(at package-103 G2)
		(at package-104 G2)
		(at package-105 G2)
		(at package-106 G2)
		(at package-107 G1)
		(at package-108 G1)
		(at package-109 G2)
		(at package-110 G1)
		(at package-111 G2)
		(at package-112 G2)
		(at package-113 G1)
		(at package-114 G1)
		(at package-115 G1)
		(at package-116 G1)
		(at package-117 G2)
		(at package-118 G1)
		(at package-119 G2)
		(at package-120 G2)
		(at package-121 G1)
		(at package-122 G1)
		(at package-123 G2)
		(at package-124 G2)
		(at package-125 G1)
		(at package-126 G2)
		(at package-127 G2)
		(at package-128 G2)
		(at package-129 G1)
		(at package-130 G1)
		(at package-131 G1)
		(at package-132 G1)
		(at package-133 G1)
		(at package-134 G2)
		(at package-135 G1)
		(at package-136 G2)
		(at package-137 G1)
		(at package-138 G1)
		(at package-139 G1)
		(at package-140 G1)
		(at package-141 G1)
		(at package-142 G2)
		(at package-143 G2)
		(at package-144 G2)
		(at package-145 G2)
		(at package-146 G1)
		(at package-147 G1)
		(at package-148 G1)
		(at package-149 G1)
		(at package-150 G2)
		(at package-151 G1)
		(at package-152 G2)
		(at package-153 G2)
		(at package-154 G2)
		(at package-155 G2)
		(at package-156 G1)
		(at package-157 G1)
		(at package-158 G2)
		(at package-159 G2)
		(at package-160 G2)
		(at package-161 G1)
		(at package-162 G1)
		(at package-163 G2)
		(at package-164 G2)
		(at package-165 G2)
		(at package-166 G1)
		(at package-167 G2)
		(at package-168 G2)
		(at package-169 G1)
		(at package-170 G1)
		(at package-171 G1)
		(at package-172 G1)
		(at package-173 G1)
		(at package-174 G1)
		(at package-175 G2)
		(at package-176 G1)
		(at package-177 G2)
		(at package-178 G1)
		(at package-179 G1)
		(at package-180 G2)
		(at package-181 G1)
		(at package-182 G1)
		(at package-183 G2)
		(at package-184 G2)
		(at package-185 G2)
		(at package-186 G2)
		(at package-187 G2)
		(at package-188 G1)
		(at package-189 G1)
		(at package-190 G1)
		(at package-191 G1)
		(at package-192 G1)
		(at package-193 G2)
		(at package-194 G2)
		(at package-195 G2)
		(at package-196 G1)
		(at package-197 G2)
		(at package-198 G1)
		(at package-199 G1)
		(at package-200 G2)
		(at package-201 G1)
		(at package-202 G1)
		(at package-203 G2)
		(at package-204 G2)
		(at package-205 G2)
		(at package-206 G1)
		(at package-207 G1)
		(at package-208 G1)
		(at package-209 G2)
		(at package-210 G2)
		(at package-211 G1)
		(at package-212 G1)
		(at package-213 G2)
		(at package-214 G1)
		(at package-215 G1)
		(at package-216 G1)
		(at package-217 G2)
		(at package-218 G1)
		(at package-219 G2)
		(at package-220 G2)
		(at package-221 G1)
		(at package-222 G1)
		(at package-223 G1)
		(at package-224 G1)
		(at package-225 G2)
		(at package-226 G1)
		(at package-227 G2)
		(at package-228 G1)
		(at package-229 G2)
		(at package-230 G1)
		(at package-231 G1)
		(at package-232 G1)
		(at package-233 G2)
		(at package-234 G1)
		(at package-235 G1)
		(at package-236 G2)
		(at package-237 G2)
		(at package-238 G1)
		(at package-239 G2)
		(at package-240 G2)
		(at package-241 G1)
		(at package-242 G2)
		(at package-243 G2)
		(at package-244 G1)
		(at package-245 G2)
		(at package-246 G2)
		(at package-247 G1)
		(at package-248 G2)
		(at package-249 G1)
		(at package-250 G1)
		(at package-251 G1)
		(at package-252 G2)
		(at package-253 G1)
		(at package-254 G2)
		(at package-255 G2)
		(at package-256 G2)
		(at package-257 G2)
		(at package-258 G2)
		(at package-259 G2)
		(at package-260 G2)
		(at package-261 G1)
		(at package-262 G2)
		(at package-263 G2)
		(at package-264 G2)
		(at package-265 G1)
		(at package-266 G1)
		(at package-267 G2)
		(at package-268 G1)
		(at package-269 G1)
		(at package-270 G1)
		(at package-271 G1)
		(at package-272 G1)
		(at package-273 G2)
		(at package-274 G1)
		(at package-275 G1)
		(at package-276 G2)
		(at package-277 G1)
		(at package-278 G1)
		(at package-279 G2)
		(at package-280 G1)
		(at package-281 G1)
		(at package-282 G1)
		(at package-283 G2)
		(at package-284 G2)
		(at package-285 G1)
		(at package-286 G1)
		(at package-287 G1)
		(at package-288 G1)
		(at package-289 G2)
		(at package-290 G2)
		(at package-291 G2)
		(at package-292 G2)
		(at package-293 G2)
		(at package-294 G1)
		(at package-295 G2)
		(at package-296 G1)
		(at package-297 G2)
		(at package-298 G2)
		(at package-299 G2)
		(at package-300 G2)
		(at package-301 G1)
		(at package-302 G2)
		(at package-303 G2)
		(at package-304 G2)
		(at package-305 G1)
		(at package-306 G2)
		(at package-307 G1)
		(at package-308 G1)
		(at package-309 G1)
		(at package-310 G2)
		(at package-311 G1)
		(at package-312 G2)
		(at package-313 G2)
		(at package-314 G2)
		(at package-315 G2)
		(at package-316 G1)
		(at package-317 G1)
		(at package-318 G1)
		(at package-319 G2)
		(at package-320 G1)
		(at driver-1 D)
		(at truck-1 D)
		)
	)
)
