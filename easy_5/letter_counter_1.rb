def word_sizes string
  result = {}

  return result if string.empty?

  words = string.split
  words.each do |word|
    current_word_size = word.size
    count_current_word = words.count do |current_word|
      current_word.size == current_word_size
    end

    result[current_word_size] = count_current_word
  end

  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
p word_sizes('tariq') == {5=>1}