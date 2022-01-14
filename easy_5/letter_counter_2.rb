# Modify the word_sizes method from the previous exercise to exclude 
# non-letters when determining word size. For instance, 
# the length of "it's" is 3, not 4.

require 'pry-byebug'

def word_sizes string
  result = {}

  return result if string.empty?

  words = string.split
  words.each do |word|
    current_word_size = word.tr('^A-Za-z', '').size
    count_current_word = words.count do |current_word|
      current_word.tr('^A-Za-z', '').size == current_word_size
    end

    result[current_word_size] = count_current_word
  end

  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}