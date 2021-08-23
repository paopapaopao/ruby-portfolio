def special_pythagorean_triplet(x)
  Array(1...x / 3).each do |a|
    Array(a + 1..(x - a) / 2).each do |b|
      c = x - a - b

      return a * b * c if b < c && a**2 + b**2 == c**2 && a + b + c == x
    end
  end
end

# # 31875000
p special_pythagorean_triplet(1000)
