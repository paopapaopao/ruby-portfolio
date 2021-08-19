def digit_fifth_powers
	nums = []
	Array(2...1000000).each do |i|
		sum = 0
		i.digits.each do |j|
			sum += j ** 5
		end

		if i == sum
			nums << i
		end
	end

	return nums.sum
end

# 443839
p digit_fifth_powers