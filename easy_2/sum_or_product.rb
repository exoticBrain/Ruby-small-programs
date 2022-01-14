def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def sum(number)
  1.upto(number).reduce(:+)
end

def product(number)
  1.upto(number).inject(:*)
end

def take_number()
  prompt("Please enter an integer greater than 0:")
  number = 0
  loop do
    Kernel.print(">> ")
    number = Kernel.gets().chomp().to_i()
    break unless number <= 0
    prompt("INVALID NUMBER!")
  end
  number
end

def take_operation()
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  operation = ''
  loop do
    Kernel.print(">> ")
    operation = Kernel.gets().chomp().downcase()
    break if operation == 's' || operation == 'p'
    prompt("INVALID OPERATION!")
  end
  operation
end

number = take_number()
operation = take_operation()

case operation
when "s"
  sum = sum(number)
  prompt("The sum of the integers between 1 and #{number} is #{sum}.")
when "p"
  product = product(number)
  prompt("The product of the integers between 1 and #{number} is #{product}.")
end

Kernel.puts()
prompt("Thank you!")