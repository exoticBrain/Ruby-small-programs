def prompt(msg)
  Kernel.puts("=> #{msg}")
end

prompt("What is your age?")
age = Kernel.gets().chomp().to_i

prompt("At what age would you like to retire?")
retire_age = Kernel.gets().chomp().to_i

current_time = Time.new.year
years_before_retire = retire_age - age
retire_time = years_before_retire + current_time

prompt("It's #{current_time}. You will retire in #{retire_time}")
prompt("You have only #{years_before_retire} years of work to go!")