def prompt(msg)
  Kernel.puts("==> #{msg}")
end

def take_number(which_number)
  prompt("Enter the #{which_number} number:")
  Kernel.gets().chomp().to_i()
end

def sum(number1, number2)
  sum = number1 + number2
  prompt("#{number1} + #{number2} == #{sum}")
end

def subtract(number1, number2)
  sub = number1 - number2
  prompt("#{number1} - #{number2} == #{sub}")
end

def multiply(number1, number2)
  mul = number1 * number2
  prompt("#{number1} * #{number2} == #{mul}")
end

def divided_by_zero?(number)
  number == 0
end

def division(number1, number2)
  if divided_by_zero?(number2)
    prompt("'/' by zero is undefined!")
  else
    div = number1.to_f() / number2
    prompt("#{number1} / #{number2} == #{format("%.2f", div)}")
  end
end

def remainder(number1, number2)
  if divided_by_zero?(number2)
    prompt("'%' by zero is undefined!")
  else
    remainder = number1.to_f() % number2
    prompt("#{number1} % #{number2} == #{format("%.2f", remainder)}")
  end
end

def square(number1, number2)
  squar = number1 ** number2
  prompt("#{number1} ** #{number2} == #{squar}")
end

def arithmetic_calculation(operator, number1, number2)
  case operator
  when "+"
    sum(number1, number2)
  when "-"
    subtract(number1, number2)
  when "*"
    multiply(number1, number2)
  when "/"
    division(number1, number2)
  when "%"
    remainder(number1, number2)
  when "**"
    square(number1, number2)
  end
end

first_number = take_number(1)
second_number = take_number(2)
operators = %w(+ - * / % **)

operators.each do |opt|
  arithmetic_calculation(opt, first_number, second_number)
end