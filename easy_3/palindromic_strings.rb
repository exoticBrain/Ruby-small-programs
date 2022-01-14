def palindrome?(collection)
  collection.reverse == collection
end

  p palindrome?([1,2,3,4,3,2,1]) == true
  p palindrome?([2,3,4,5,2]) == false
  p palindrome?('dad') == true
  p palindrome?('madam') == true
  p palindrome?('Madam') == false          # (case matters)
  p palindrome?("madam i'm adam") == false # (all characters matter)
  p palindrome?('356653') == true