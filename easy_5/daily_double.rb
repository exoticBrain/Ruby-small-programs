# Write a method that takes a string argument and returns a new string that contains the value of the 
# original string with all consecutive duplicate characters collapsed into a single character. 

=begin
  input  : String, Contains duplicate characters
  output : String

  MENTAL MODEL : Retrun the value of the original string without duplicate characters

  EXAMPLES : 
    'ddaaiillyy ddoouubbllee' => 'daily double'
    '4444abcabccba' => '4abcabcba'
    'ggggggggggggggg' => 'g'
    'a' => 'a'
    '' => ''

  RULES :
    - all consecutive duplicate characters should be collapsed into a single character
    - return '' if the given string == ''

  DATA STRUCTURE : Array, containing each char in each word from the given string

  ALGORITHM :
    - return '' if string == ''
    - Create original_string = []
    - Create 'words' that contains each word in the given string
    - Iterate over words using map
      - create original_word = ''
      - Iterate over each char in the current_word 
        - mystery_char = current_char
        - next if mystery_char == current_char
        - original_word << mystery_char
      - return original_word
    - return the  original_string joined with space


=end

require 'pry-byebug'

def  crunch(string)
  return '' if string.empty?

  original_string = string.split.map do |current_word|
    original_word = ''
    count = 0

    loop do
      if current_word[count] == current_word[count + 1]
        count += 1
      else
        original_word << current_word[count]
        count += 1
      end

      break if count >= current_word.size
    end

    original_word
  end
  
  original_string.join(' ')
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
