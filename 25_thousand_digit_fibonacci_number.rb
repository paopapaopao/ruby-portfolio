def thousand_digit_fibonacci_number(length)
	fibo_seq = [1, 1]
	while fibo_seq[-1].digits.size != length
		fibo_seq << fibo_seq[-2] + fibo_seq[-1]
	end

	return fibo_seq.size
end

# 4782
p thousand_digit_fibonacci_number(1000)