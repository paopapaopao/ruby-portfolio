def thousand_digit_fibonacci_number(x)
  fibo_seq = [1, 1]
  fibo_seq << fibo_seq[-2] + fibo_seq[-1] while fibo_seq[-1].digits.size != x

  return fibo_seq.size
end

# 4782
p thousand_digit_fibonacci_number(1000)
