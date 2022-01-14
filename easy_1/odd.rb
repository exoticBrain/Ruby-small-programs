def valid_number?(num)
  num.to_s.to_i == num
end

def is_odd?(number)
  if valid_number?(number)
    number % 2 != 0
  else
    "Invalid input!"
  end
end

puts is_odd?(4)