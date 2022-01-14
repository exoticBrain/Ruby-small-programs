# Stringy string with additional default argument

def stringy(length, start="1")
  count = 0
  string = ''
  digit = %w(1 0)
  digit.reverse! if start == "0"

  length.times do |current_digit|
    if current_digit.even?
      string << digit[0]
    else
      string << digit[1]
    end
  end

  string
end

Kernel.print("Which number do you wanna start with and the size of repetition\n>> ")
start = gets.chomp
Kernel.print(">> ")
size = gets.chomp.to_i

p stringy(size, start)