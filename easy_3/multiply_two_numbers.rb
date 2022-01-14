def multiply(number1, number2)
  number1 * number2
end

array1 = [5,2]

p array1.object_id # => 60
result = multiply(array1, 3)
p result # => [5, 2, 5, 2, 5, 2]
p result.object_id # => 80

# Further Exploration

# if the first argument was an array 
# for example if we called multiply([5,2], 3) then the output willbe :
# => [5, 2, 5, 2, 5, 2]

# we see that the element inside the array got repeated 3 time
# so we have a new array containing the elements repeated 3 times. 
# We know that by comparing the object_id of both the array1 and the result array