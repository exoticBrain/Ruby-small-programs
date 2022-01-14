SQ_FEET_TO_SQ_INCHES = 144
SQ_INCHES_TO_SQ_CENT = 6.4516
SQ_CENT_TO_SQ_METER = 0.0001


def prompt(msg)
  Kernel.puts("=> #{msg}")
end

prompt("Enter the length of the room in feet:")
length = gets.chomp.to_i

prompt("Enter the width of the room in feet:")
width = gets.chomp.to_f

square_feet = (length * width).round(2)
square_inche = (square_feet * SQ_FEET_TO_SQ_INCHES).round(2)
square_cent = (square_inche * SQ_INCHES_TO_SQ_CENT).round(2)
square_meter = (square_cent * SQ_CENT_TO_SQ_METER).round(2)

prompt("The area of the room is #{square_meter} square meters, #{square_feet} square feet,")
prompt("#{square_inche} square inches, and #{square_cent} square centemeters.")