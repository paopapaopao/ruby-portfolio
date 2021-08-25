require 'prime'

def circular_primes(limit)
	circulars = []
	Prime.each(limit - 1) do |i|
		count = 1
		prime = i.digits.reverse
		Array(1...prime.size).each do |j|
			prime.rotate!

			prime.join.to_i.prime? ? count += 1 : break
		end

		if count == i.digits.size
			circulars << i
		end
	end

	return circulars.size
end

# 55
p circular_primes(1000000)