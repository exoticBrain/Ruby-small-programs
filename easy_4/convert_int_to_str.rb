NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
    number_arr = int.digits.reverse
    number_str = ''

    number_arr.each do |number|
        number_str << NUMBERS[number]
    end

    number_str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'