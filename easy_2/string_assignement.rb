name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
  This code will print 
  => BOB
  => BOB

  The thing that is happening here is variable as pointer

  * first we initialized name with the string object "Bob"  
      so now name point => "Bob"

  * second we initialized save_name with the varibale name that contains the string object "Bob"
      so now save_name it's a reference of name. save_name point => "Bob"

  * third we used the String#upcase! method 
      it's a method that convert every char in that string to upper case
      Well the string object "Bob" becames "BOB"
      and because that method is a destructive one which means it returns Self 
      save_name will point => "BOB" which is the same object as before
=end