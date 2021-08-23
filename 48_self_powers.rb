def self_powers(x)
  return Array(1..x).map { |i| i**i }.sum.digits.take(10).reverse.join.to_i
end

# 9110846700
p self_powers(1000)
