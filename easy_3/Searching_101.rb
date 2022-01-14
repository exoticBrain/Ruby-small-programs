def take_numbers()
  count = 0
  numbers = []

  loop do
    Kernel.puts("==> Enter the #{count + 1} number:")
    numbers << Kernel.gets().chomp().to_i()
    count += 1
    break if count >= 6
  end

  numbers
end

numbers = take_numbers()
checked_number = numbers.pop()

if numbers.include?(checked_number)
  Kernel.puts("The number #{checked_number} appears in #{numbers}.")
else
  Kernel.puts("The number #{checked_number} does not appear in #{numbers}.")
end

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].