def repeat(string, repeat_number)
	repeat_number.times {|_| Kernel.puts(string)}
end

Kernel.print("Give me a string and how many times you wanna repeat it\n>> ")
str = Kernel.gets().chomp()

Kernel.print("\n>> ")
number = Kernel.gets().chomp().to_i()

repeat(str, number)
