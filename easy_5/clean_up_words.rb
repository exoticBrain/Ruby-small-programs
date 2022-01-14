# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result 
# (the result should never have consecutive spaces).

=begin
  input  : string, the given sentence that include non alphachars
  output : string, with the non alphachars replaced with space

  RULES :
    - replace any non alphachar with ' '
    - if a non alphachar occur more than once in a row replace them all with one ' '
    - the result should never have consecutive spaces

  DATA STRUCTURE:
    - array, containing each word splited
  
  ALGORITHM:
    - Create 'result' string to store the desired output
    - Create 'current_word' to store the current word
    - Iterate over the sentence
      - Iterate over each word
        - replace each non alphachar with ' '
        - If there's a consecutive spaces skip them unitl you find that the next char is an alphachar 
        - replace the spaces with one space
        - Store it to 'current_word'
    - return the 'result'
=end

def cleanup(sentence)
  sentence.tr('^a-z', ' ').squeeze(' ') 
end


p cleanup("---what's my +*& line?") #== ' what s my line '