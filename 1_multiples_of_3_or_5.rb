def multiples_of_3_or_5(x)
  return Array(3...x).select { |n| n % 3 == 0 || n % 5 == 0 }
end

# 233168
p multiples_of_3_or_5(1000).sum
