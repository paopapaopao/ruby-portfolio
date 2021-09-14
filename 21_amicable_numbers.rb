def amicable_numbers(x)
  proper_divisors = [0]
  Array(1...x).each do |n|
    divisors = []
    Array(1..Math.sqrt(n)).each do |i|
      divisors << i if n % i == 0
      divisors << n / i if n % i == 0 && i != 1
    end
    proper_divisors << divisors.uniq
  end

  amicables = []
  Array(1...x).each do |n|
    b = proper_divisors[n].sum
    next if b > proper_divisors.size
    a = proper_divisors[b].sum
    next if a > proper_divisors.size

    if proper_divisors[a].sum == b && proper_divisors[b].sum == a && a != b
      amicables += [a, b]
    end
  end

  return amicables.uniq.sum
end

# 31626
p amicable_numbers(10000)
