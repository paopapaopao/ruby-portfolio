def lattice_paths(x)
	return Array(1..x * 2).reduce(:*) / Array(1..x).reduce(:*) ** 2
end

# 137846528820
p lattice_paths(20)