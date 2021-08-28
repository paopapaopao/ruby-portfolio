require 'prime'

def circular_primes(x)
  circulars = []
  Prime.each(x - 1) do |p|
    count = 1
    prime = p.digits.reverse
    Array(1...prime.size).each do |j|
      prime.rotate!

      prime.join.to_i.prime? ? count += 1 : break
    end

    circulars << p if count == p.digits.size
  end

  return circulars.size
end

# 55
p circular_primes(1000000)
