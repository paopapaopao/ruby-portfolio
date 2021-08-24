def digit_fifth_powers(x)
  nums = []
  Array(2..354294).each do |n|
    sum = 0
    n.digits.each { |digit| sum += digit**x }
    nums << n if n == sum
  end

  return nums.sum
end

# 443839
p digit_fifth_powers(5)
