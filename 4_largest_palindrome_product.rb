def largest_palindrome_product(x)
  return Array(10**(x - 1)...10**x).combination(2).map { |c| c.first * c.last }.
          select { |p| p.digits == p.digits.reverse }.max
end

# 906609
p largest_palindrome_product(3)
