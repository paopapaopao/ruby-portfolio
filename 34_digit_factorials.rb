def digit_factorials
	factorials = Array(0..9).map do |i|
		i == 0 ? 1 : Array(1..i).reduce(:*)
	end
	nums = []
	Array(3...10000000).each do |i|
		digits = i.digits.map do |j|
			factorials[j]
		end

		if digits.sum == i
			nums << i
		end
	end

	return nums.sum
end

# 40730
p digit_factorials