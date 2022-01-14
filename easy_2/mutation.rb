array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin

So in the first #each method we initialize array2 with every element inside array1

and we used #<< method which means that every element inside array2 is a reference from the elements inside array1

In the second #each method we call the #upcase! method. While that method mutate the caller and returns self
the changes that has been made inside array1 will affect elements inside array2

and this code above will print:

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

# How can this feature of ruby get you in trouble? How can you avoid it?

Sometimes you'll find yourself affecting other objects without given intention to them
so to avoid those issues you can make a shallow copy to that object before making any changes

# For example we could make this :

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.dup }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

end