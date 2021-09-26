def permuted_multiples
	x = 2
	loop do
		return x if (3..6).all? { |i| (i * x).digits.sort == (2 * x).digits.sort }
		x += 1
	end
end

# 142857
p permuted_multiples