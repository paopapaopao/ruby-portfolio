require 'prime'

def summation_of_primes(x)
  return Prime.each(x - 1).sum
end

# 142913828922
p summation_of_primes(2000000)
