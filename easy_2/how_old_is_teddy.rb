Kernel.print("What's your name\n>> ")
name = gets.chomp.capitalize
name = "Teddy" unless !name.empty?

age = rand(20..200)
# Kernel#rand method returns a random number where range.member?(number) == true.
Kernel.puts("#{name} is #{age} years old!")