def oddities(array)
  odd_list = []

  array.each_with_index do |item, index|
    odd_list << item unless index.odd?
  end

  odd_list
end



def oddities2(array)
  odd_list = []

  array.each_with_index do |item, index|
    odd_list << item if index.even?
  end

  odd_list
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities2(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities2([]) == []