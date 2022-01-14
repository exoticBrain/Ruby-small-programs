def multisum(number)
  multiples = []
  
  if (number.is_a? Integer) && (number > 1)
    number.times do |current_num|
      current_num += 1
      current_num % 3 == 0 || current_num % 5 == 0 ? multiples << current_num : next
    end
  else
    return 'The number must be an Integer > 1'
  end

  multiples.uniq().inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168