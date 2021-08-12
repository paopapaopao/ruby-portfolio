def lexicographic_permutations(x)
	return Array(0..9).permutation.to_a[x - 1].join.to_i
end

# 2783915460
p lexicographic_permutations(1000000)