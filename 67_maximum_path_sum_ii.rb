def maximum_path_sum_ii(file_name)
	triangle = []
	File.read(file_name).split("\n").each do |row|
		triangle << row.split(" ").map(&:to_i)
	end

	path_sums = triangle.last
	Array(0...triangle.size - 1).reverse.each do |row|
		path_sums = triangle[row].each_with_index.map { |n, i| n + path_sums[i, 2].max }
	end

	return path_sums.first
end

# 7273
p maximum_path_sum_ii("triangle.txt")