def names_scores(file_name)
  names = File.read(file_name).split(',').map { |name| name[1, name.length - 2] }
  scores = names.sort.map.each_with_index do |name, index|
    name.split('').map { |letter| letter.ord - 64 }.sum * (index + 1)
  end

  return scores.sum
end

# 871198282
p names_scores('names.txt')
