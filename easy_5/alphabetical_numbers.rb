# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers 
# sorted based on the English words for each number:
# 
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
# sixteen, seventeen, eighteen, nineteen

=begin
  Input  : Array, containing numbers from 0 to 19
  output : Sorted array

  MENTAL MODEL : return an Array of each those integers sorted based on its English words

  RULES :
    - return numbers sorted based on its english word
      example => [1,0,8] => [8,1,0]
                 eight < one < zero

  DATA STRUCTURE : Hash, containing each number as key and its word in English as value

  ALGORITHM :
    - Create hash called 'NUMBERS'
    - Iterate over the given Array
    - Sort that array based on NUMBERS[:number]
    - return sorted array

=end

def alphabetic_number_sort(array)
  numbers = {
    0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 
    9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 
    17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
  }

  array.sort! do |first_number, second_number|
    numbers[first_number] <=> numbers[second_number]
  end
end
  
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]