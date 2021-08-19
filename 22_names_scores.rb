def names_scores(file_name)
	names = File.read(file_name).split(',')

	names = names.sort.map do |name|
		name[1, name.length - 2]
	end

	scores = names.map do |name|
		sum = 0
		name.split('').each do |letter|
			sum += letter.ord - 64
		end
		sum
	end

	new_scores = []
	scores = scores.each_with_index do |score, index|
		new_scores << score * (index + 1)
	end

	puts new_scores.sum
end

# 871198282
names_scores('names.txt')