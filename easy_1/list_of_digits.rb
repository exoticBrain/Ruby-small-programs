def digit_list(number)
  array_digits = []
  array_converted_digits = number.to_s.split("")

  array_converted_digits.each do |converted_digit|\
    array_digits << converted_digit.to_i
  end
  array_digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true