def even_fibonacci_numbers(x)
	sequence = [1, 2]
	while sequence[-1] + sequence[-2] <= x
		sequence << sequence[-1] + sequence[-2]
	end

	evens = sequence.select do |n|
		n.even?
	end

	return evens.sum
end

# 4613732
p even_fibonacci_numbers(4000000)