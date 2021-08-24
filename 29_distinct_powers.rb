def distinct_powers(x)
  terms = []
  Array(2..x).each do |i|
    terms += Array(2..x).map { |j| i**j }
  end

  return terms.uniq.size
end

# 9183
p distinct_powers(100)
