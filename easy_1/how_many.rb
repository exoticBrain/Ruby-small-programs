require 'pry-byebug'

def compare_word(array, compared_word)
  word_counter = 1
  array.each do |word|
    word_counter += 1 if word == compared_word
  end
  word_counter
end

def remove_word(array, removed_word)
  array.delete_if{ |word| word == removed_word }
end

def add_word_to_word_result_hash(hash, word, number_of_repitition)
  hash[word.to_sym] = number_of_repitition
end

def display(hash)
  hash.each do |key, val|
    Kernel.puts("#{key} => #{val}")
  end
end

def count_occurrences(arr)
  word_result = {}
  loop do
    word_taken = arr.shift
    word_counter = compare_word(arr, word_taken)
    remove_word(arr, word_taken)
    add_word_to_word_result_hash(word_result, word_taken, word_counter)
    break if arr.empty?
  end
  display(word_result)
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)