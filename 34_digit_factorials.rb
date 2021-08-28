def digit_factorials
  factorials = Array(0..9).map { |i| i == 0 ? 1 : Array(1..i).reduce(:*) }
  nums = []
  Array(3...10000000).each do |i|
    digits = i.digits.map { |j| factorials[j] }
    nums << i if digits.sum == i
  end

  return nums.sum
end

# 40730
p digit_factorials
