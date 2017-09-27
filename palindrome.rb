#Here I find the largest palindrome (same backwards and forwards) in a string

#make a method to see if a string is a palindrome
def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end
    i += 1
  end
  return true
end


#method to cycle through all palindrome possibilities and return the largest one
def longest_palindrome(string)
  x = 0
  palindrome = ""
  while x < string.length
    length = 1
    while (x + length) <= string.length
     string_piece = string.slice(x,length)
       if palindrome?(string_piece) && string_piece.length > palindrome.length
        palindrome = string_piece
      end
    length += 1
    end
    x += 1
  end
  puts palindrome
end

longest_palindrome("kuukjssjksas")
#should puts "kjssjk"
