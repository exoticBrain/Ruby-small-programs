FIRST_ASCII_NUMBER = 48 # '0'.ord()

def atoi(ascii_arr)
  # to have a quick understanding of what hapening here look at the example below
  converted_str = ascii_arr.map {|ascii| ascii - FIRST_ASCII_NUMBER}
  converted_str.inject {|sum, number| sum * 10 + number}
end

def string_to_integer(str)
  ascii_str = str.bytes # bytes method returns an aray containing the ascii equivalent of those chars passed in it.
  atoi(ascii_str)
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570

# If we have a string like this '45'
# and split that string into an array = |'4'|'5'|

# '4'.ord() => 52 (ascii)
# '0'.ord() => 48 (ascii)
# first = 52 - 48 = 4 (Integer)

# '5'.ord() => 53 (ascii)
# '0'.ord() => 48 (ascii)
# second = 53 - 48 = 5 (Integer)

# first = first * 10 = 40
# second = second * 1 = 5

# integer = first + second = 45


# NUMBERS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def convert_array_to_int(arr)

# end

# def string_to_integer(str)
#   converted_str = []

#   str.chars.each do |str_number|
#     NUMBERS.each_key do |value_number|
#       converted_str << NUMBERS[value_number] if value_number == str_number
#     end
#   end

#   convert_array_to_int(converted_str)
# end

