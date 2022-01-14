def palindrome?(collection)
  collection.reverse == collection
end

def real_palindrome?(str)
  is_palindrome = str.downcase.delete("^a-z0-9")
  palindrome?(is_palindrome)
end



# CHARS =   'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXZ'
# def real_palindrome?(str)
#   str.downcase!
#   front = 0
#   is_palindrome = true
#   back = str.length - 1

#   while front <= back && is_palindrome
#     unless CHARS.include?(str[front])
#       front += 1
#       next
#     end

#     unless CHARS.include?(str[back])
#       back -= 1
#       next
#     end

#     is_palindrome = false if str[front] != str[back]
#     front += 1
#     back -= 1
#   end

#   is_palindrome
# end


p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false