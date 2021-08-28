require 'prime'

def pandigital_prime
  pandigitals = []
  Array(1..9).each do |d|
    Array(1..d).permutation.each do |p|
      n = p.join.to_i
      pandigitals << n if n.prime?
    end
  end

  return pandigitals.max
end

# 7652413
p pandigital_prime
