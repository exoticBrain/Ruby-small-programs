def reverse(word)
  word.split("").reverse.join
end

def reverse_words(string)
  words = string.split
  reversed_words = []

  words.each do |current_word|
    if current_word.size >= 5
      reversed_words << reverse(current_word)
    else
      reversed_words << current_word
    end
  end

  reversed_words.join(" ")
end

puts reverse_words('Professional')          == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School')         == 'hcnuaL loohcS'