def number_spiral_diagonals(x)
  diagonals = [1]
  (3..x).step(2) do |i|
    Array(0..3).each { |j| diagonals << i**2 - (j * (i - 1)) }
  end

  return diagonals.sum
end

# 669171001
p number_spiral_diagonals(1001)
