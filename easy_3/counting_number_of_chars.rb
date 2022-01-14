def prompt(msg)
  Kernel.puts("==> #{msg}")
end

prompt("Please write word or multiple words:")
statement = Kernel.gets().chomp()

count_chars = 0
statement.chars.each do |char|
  count_chars += 1 unless char == ' '
end

prompt("There are #{count_chars} characters in \"#{statement}\".")