def prompt(msg)
  Kernel.puts("=> #{msg}")
end

prompt("What is the bill?")

price_without_tax = Kernel.gets().chomp().to_f()

prompt("What is the tip percentage?")
percentage = (Kernel.gets().chomp().to_f() / 100)

value_added_tax = (price_without_tax * percentage).round(2)
all_taxes_included = (price_without_tax + value_added_tax).round(2)

prompt("The tip is $#{format("%.2f", value_added_tax)}")
prompt("The total is $#{format("%.2f", all_taxes_included)}")