char_options_array = [ ['l', '1'], ['e', '3'], ['e', '3'], ['t', '7']]
permutations = char_options_array[0]
for index in 1 ... char_options_array.size
  permutations = permutations.product(char_options_array[index])
end

permutations.each do |perm|
  puts perm.join
end