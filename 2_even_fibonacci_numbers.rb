def even_fibonacci_numbers(x)
  sequence = [1, 2]
  sequence << sequence[-1] + sequence[-2] while sequence[-1] + sequence[-2] <= x

  return sequence.select(&:even?)
end

# 4613732
p even_fibonacci_numbers(4000000).sum
