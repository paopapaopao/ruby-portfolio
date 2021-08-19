def highly_divisible_triangular_number(x)
	triangle_factors = {}
	triangle = 0
	loop do
		triangle += triangle_factors.size + 1
		factors = []
		Array(1..Math.sqrt(triangle)).each do |n|
			if triangle % n == 0
				factors << n << triangle / n
			end
		end
		triangle_factors[triangle] = factors.uniq.sort

		if factors.size > x
			break
		end
	end

	return triangle_factors.keys.last
end

# 76576500
p highly_divisible_triangular_number(500)