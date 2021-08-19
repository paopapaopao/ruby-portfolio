def distinct_powers(lower_limit, upper_limit)
	terms = []
	Array(lower_limit..upper_limit).each do |i|
		Array(lower_limit..upper_limit).each do |j|
			terms << i ** j
		end
	end

	return terms.uniq.size
end

# 9183
p distinct_powers(2, 100)