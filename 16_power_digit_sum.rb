def power_digit_sum(x)
  return (2**x).digits.sum
end

# 1366
p power_digit_sum(1000)
