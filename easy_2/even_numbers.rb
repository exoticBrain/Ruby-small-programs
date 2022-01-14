# 100.times do |number|
#   number += 1
#   break if number > 99
#   Kernel.puts(number) if number.even?
# end

1.upto(99) {|number| Kernel.puts(number) unless number.odd?}