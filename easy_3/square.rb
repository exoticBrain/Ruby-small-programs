def multiply(number1, number2)
  number1 * number2
end

def square(number, power)
  arr = []
  res = number

  loop do
    res = multiply(res, number)
    arr << res
    power -= 1
    break if power == 1
  end
  
  arr.last()
end

p square(5, 7) == 78125

# power = 3
# 5 * 5 => 25
# 25 * 5 => 125
# 5 * 5 * 5
# 25 + 25 + 25 + 25 + 

# power = 4
# 5 * 5 * 5 * 5 => 625
