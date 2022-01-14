# Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  string_size = string.size + 2
  puts "+" + '-' * string_size + "+"
  puts "|" + ' ' * string_size + "|"
  puts "|" + " #{string} " + "|"
  puts "|" + ' ' * string_size + "|"
  puts "+" + '-' * string_size + "+"
end

loop do
  print ">> "
  print_in_box(gets.chomp)
end
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+