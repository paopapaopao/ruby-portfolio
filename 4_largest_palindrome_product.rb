def largest_palindrome_product(x)
	products = Array(10 ** (x - 1)...10 ** x).combination(2).map do |c|
		c.first * c.last
	end

	palindromes = products.select do |p|
		p.digits == p.digits.reverse
	end

	return palindromes.max
end

# 906609
p largest_palindrome_product(3)