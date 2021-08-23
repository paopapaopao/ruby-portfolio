def factorial_digit_sum(x)
  return Array(1..x).reduce(:*).digits.sum
end

# 648
p factorial_digit_sum(100)
