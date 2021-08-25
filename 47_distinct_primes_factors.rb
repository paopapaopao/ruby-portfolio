require 'prime'

def distinct_primes_factors(size, primes)
	nums = []
	first_num = 1
	while nums.size < size
		Array(first_num...first_num + size).each do |i|
			if Prime.prime_division(i).size == primes
				nums << i
			else
				nums.clear

				break
			end
		end

		first_num += 1
	end

	return nums.first
end

# 134043
p distinct_primes_factors(4, 4)
