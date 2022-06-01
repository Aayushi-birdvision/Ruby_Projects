class TwoBucket
	attr_reader :moves, :goal_bucket, :other_bucket

	def initialize(onesize, twosize, goal, first)
		one = 0
		two = 0
		@moves = 0
		if first == "one"
			(one, two) = solve(one, two, onesize, twosize, goal)
		else
			(two, one) = solve(two, one, twosize, onesize, goal)
		end
		if one == goal
			@goal_bucket = "one"
			@other_bucket = two
		else
			@goal_bucket = "two"
			@other_bucket = one
		end
	end
	def solve(a, b, asize, bsize, goal)
		if bsize == goal
			@moves = 2
			return [asize, bsize]
		end
		until a == goal || b == goal
			if a == 0
				a = asize
			elsif b == bsize
				b = 0
			else
				while a > 0 && b < bsize
					a -= 1
					b += 1
				end
			end
			@moves += 1
		end
		return [a, b]
	end
end
