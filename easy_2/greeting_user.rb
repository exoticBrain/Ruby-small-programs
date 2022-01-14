Kernel.puts("What is your name?")
name = Kernel.gets().chomp!()

if name.end_with?("!")
  name.chop!()
  Kernel.puts("HELLO, #{name.upcase()}. WHY ARE WE SCREAMING?")
else
  Kernel.puts("Hello, #{name}")
end