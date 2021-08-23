require 'prime'

def prime_permutations
	Prime.each(9999) do |i|
		if i.digits.size == 4
			if i == 1487 || i == 4817 || i == 8147
				next
			end

			j = i + 3330
			k = j + 3330
			if j.prime? && k.prime? && i.digits.sort == j.digits.sort && j.digits.sort == k.digits.sort
				return [i, j, k].join.to_i
			end
		end
	end
end

# 296962999629
p prime_permutations