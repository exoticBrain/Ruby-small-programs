100.times do |number|
  Kernel.puts(number) if number.odd?
end

# 1.upto(99) {|number| Kernel.puts(number) unless number.even?}