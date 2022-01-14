def running_total(arr)
  index = 0
  return arr if arr.empty?() || arr.size == 1

  sum = arr.each_with_object([]) do |value, new_arr|
    if index == 0
      new_arr[index] = value
    else
      new_arr[index] = new_arr[index - 1] + value
    end
    index += 1
  end

  sum
end

# def running_total(arr)
#   return arr if arr.empty?() || arr.size == 1
#   new_arr = []
#   count = 1
#   new_arr[0] = arr[0]

#   loop do
#     new_arr[count] = new_arr[count - 1] + arr[count]
#     count += 1
#     break if count >= arr.size
#   end

#   new_arr
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []