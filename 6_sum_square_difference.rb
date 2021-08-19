def sum_square_difference(x)
  return Array(1..x).sum**2 - Array(1..x).map { |n| n**2 }.sum
end

# 25164150
p sum_square_difference(100)
