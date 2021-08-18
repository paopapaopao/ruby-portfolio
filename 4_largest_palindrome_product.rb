def largest_palindrome_product(x)
  products = Array(10**(x - 1)...10**x).combination(2).map { |c| c.first * c.last }
  palindromes = products.select { |p| p.digits == p.digits.reverse }

  return palindromes.max
end

# 906609
p largest_palindrome_product(3)
