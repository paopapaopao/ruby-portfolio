def smallest_multiple(x)
  return Array(1..x).reduce(:lcm)
end

# 232792560
p smallest_multiple(20)
