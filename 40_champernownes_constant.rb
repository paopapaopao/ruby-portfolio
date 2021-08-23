def champernownes_constant(x)
	fraction = ''
	Array(1..x).each do |i|
		fraction.length < x ? fraction += i.to_s : break
	end

	digits = fraction.split('')
	return digits[1 - 1].to_i * digits[10 - 1].to_i * digits[100 - 1].to_i * digits[1000 - 1].to_i * digits[10000 - 1].to_i * digits[100000 - 1].to_i * digits[1000000 - 1].to_i
end

# 210
p champernownes_constant(1000000)