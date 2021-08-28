def champernownes_constant(x)
  fraction = ''
  Array(1..x).each { |i| fraction.length < x ? fraction += i.to_s : break }
  digits = fraction.split('')

  return Array(0..6).map { |e| digits[10**e - 1].to_i }.reduce(:*)
end

# 210
p champernownes_constant(1000000)
