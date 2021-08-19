def longest_collatz_sequence(x)
	integer_sequences = []
	lengths = []
	Array(1...x).each do |n|
		terms = [n]
		while n != 1
			n = n.even? ? n / 2 : 3 * n + 1
			terms << n
		end
		integer_sequences << terms
		lengths << terms.length
	end

	return lengths.each_with_index.max.last + 1
end

# 837799
p longest_collatz_sequence(1000000)