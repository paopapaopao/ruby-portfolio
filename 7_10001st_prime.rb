require 'prime'

def ten_thousand_first_prime(x)
  return Prime.take(x).last
end

# 104743
p ten_thousand_first_prime(10001)
