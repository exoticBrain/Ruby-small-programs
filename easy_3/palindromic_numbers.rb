
def palindrome?(collection)
  collection.reverse == collection
end

def palindromic_number?(number)
  is_palindrome = number.to_s
  palindrome?(is_palindrome)
end

Further Exploration

If the number begins with one or more 0s?
First, if any number between 0..7 is begin with zeros Ruby will return that number.
  `example` 
  006 # => 6
  00000000007 # => 7
Second, numbers between 0..9 that begin with zeros Ruby will consider them as an octel numbers **Base 8** 
and convert them to decimal **Base 10**. So the only way to avoid doing this is to pass the numbers as a string object.
  `example`
  000000075 # => 61
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true