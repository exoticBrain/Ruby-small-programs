# -----------ITERATIVE

# def sum(number)
#   sum = 0
#   until number == 0
#     reminder = number % 10
#     number = number / 10
#     sum += reminder
#   end
#   sum
# end
# sum(23) ==> 5






# -----------RECURSIVE

# def sum(number,array)
#   if number == 0
#     array.sum
#   else
#     reminder = number % 10
#     number = number / 10
#     array << reminder
#     sum(number, array)
#   end
#end
# sum(496) ==> 19






#-----------BUILT IN METHODS

# def sum(number)
#   number.digits.sum
# end
# sum(123_456_789) ==> 45