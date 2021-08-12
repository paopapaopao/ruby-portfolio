def self_powers(x)
	array = Array(1..x).map do |i|
		i ** i
	end

	return array.sum.digits.take(10).reverse.join.to_i
end

# 9110846700
p self_powers(1000)