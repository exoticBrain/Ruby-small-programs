ORD = %w(st nd rd th)

def which_oridnal(number)
  checked_ordinal = number.to_s.chars[-1].to_i
  case checked_ordinal
  when 1
    number.to_s + 'st'
  when 2
    number.to_s + 'nd'
  when 3
    number.to_s + 'rd'
  else
    number.to_s + 'th'
  end
end

def century(year)
  if year <= 0
    return '0 and negative numbers are not allowed for years!'
  elsif year % 100 == 0
    current_century = year / 100
  else
    current_century = year / 100 + 1
  end
  if [11,12,13].include?(current_century % 100)
    current_century.to_s + 'th'
  else
    which_oridnal(current_century)
  end
end

  p century(2000) == '20th'
  p century(2001) == '21st'
  p century(1965) == '20th'
  p century(256) == '3rd'
  p century(5) == '1st'
  p century(10103) == '102nd'
  p century(1052) == '11th'
  p century(1127) == '12th'
  p century(11201) == '113th'