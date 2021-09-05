require 'prime'

def distinct_primes_factors(x)
  nums = []
  first_num = 1
  while nums.size != x
    Array(first_num...first_num + x).each do |n|
      if Prime.prime_division(n).size != x
        nums.clear

        break
      end

      nums << n
    end

    first_num += 1
  end

  return nums.first
end

# 134043
p distinct_primes_factors(4)
