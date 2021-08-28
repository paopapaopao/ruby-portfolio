def sub_string_divisibility
  pandigitals = []
  Array(0..9).permutation.to_a.each do |p|
    d2d3d4 = p[1, 3].join.to_i % 2 == 0
    d3d4d5 = p[2, 3].join.to_i % 3 == 0
    d4d5d6 = p[3, 3].join.to_i % 5 == 0
    d5d6d7 = p[4, 3].join.to_i % 7 == 0
    d6d7d8 = p[5, 3].join.to_i % 11 == 0
    d7d8d9 = p[6, 3].join.to_i % 13 == 0
    d8d9d10 = p[7, 3].join.to_i % 17 == 0

    if d2d3d4 && d3d4d5 && d4d5d6 && d5d6d7 && d6d7d8 && d7d8d9 && d8d9d10
      pandigitals << p.join.to_i
    end
  end

  return pandigitals.sum
end

# 16695334890
p sub_string_divisibility
