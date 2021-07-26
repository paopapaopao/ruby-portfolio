require 'prime'

def largest_prime_factor(x)
	return Prime.prime_division(x).max.first
end

# 6857
p largest_prime_factor(600851475143)