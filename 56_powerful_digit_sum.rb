def powerful_digit_sum
	sums = []
	(1...100).each do |a|
		sums += (1...100).map { |b| (a**b).digits.sum }
	end

	return sums.max
end

# 972
p powerful_digit_sum
