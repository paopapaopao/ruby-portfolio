def double_base_palindromes(x)
	palindromes = Array(1...x).select do |n|
		n.to_s == n.to_s.reverse && n.to_s(2) == n.to_s(2).reverse
	end

	return palindromes.sum
end

# 872187
p double_base_palindromes(1000000)