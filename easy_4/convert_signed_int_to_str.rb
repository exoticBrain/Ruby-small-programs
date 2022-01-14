require 'pry-byebug'
NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def positive_or_negative(number)
    number < 0
end

def integer_to_string(arr, number_str)
    arr.each do |number|
        number_str << NUMBERS[number]
    end

    number_str
end

def signed_integer_to_string(int)
    number_arr = int.abs.digits.reverse
    is_negative = positive_or_negative(int)

    if is_negative
        number_str = '-'
    elsif int == 0
        number_str = ''
    else
        number_str = '+'
    end

    integer_to_string(number_arr, number_str)
end

p signed_integer_to_string(+4321) #== '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'