FIRST_ASCII_NUMBER = 48

def atoi(ascii_arr)
    converted_str = ascii_arr.map {|ascii| ascii - FIRST_ASCII_NUMBER}
    converted_str.inject {|sum, number| sum * 10 + number}
end
  
def string_to_integer(str)
    ascii_str = str.bytes
    atoi(ascii_str)
end

def positive_or_negative(arr)
    if arr[0] == '-'
        arr.shift
        true
    elsif arr[0] == '+'
        arr.shift
        false
    end
end

def string_to_signed_integer(str)
    array_str = str.chars
    is_negative = positive_or_negative(array_str)
    converted_int = string_to_integer(array_str.join())

    if is_negative
        -converted_int
    else
        converted_int
    end
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100