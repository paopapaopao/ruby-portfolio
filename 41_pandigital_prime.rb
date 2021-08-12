require 'prime'

def pandigital_prime
	pandigitals = []
	Array(1..9).each do |d|
		Array(1..d).permutation.each do |p|
			n = p.join.to_i
			if n.prime?
				pandigitals << n
			end
		end
	end

	return pandigitals.max
end

# 7652413
p pandigital_prime