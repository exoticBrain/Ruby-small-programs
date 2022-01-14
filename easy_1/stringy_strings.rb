def stringy(length)
count = 0
string = ''

#ITERATIVE
while count <= length - 1
  if count.even?
    string << "1"
  else
    string << "0"
  end
  count += 1
end

#BUILT IN METHOD
=begin
  lenght.times do |current_digit|
    if current_digit.even?
      string << "1"
    else
      string << "0"
    end
  end
=end
rescue => exception
  
end
string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'