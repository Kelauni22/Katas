=begin
The purpose of this kata is to write a method that takes in a string of lowercase
letters and spaces, producing a new string that capitalizes the first letter of
each word.
=end

def capitalize_words(string)
  #split up the string
  sentence_array = []
  string_array = string.split('')
  #Have to automatically capitalize the very first letter of the sentence
  i = 0
  letter = string_array[0].upcase!
  sentence_array << letter
  i = 1
  #function that runs through array and capitalizes every letter after a space
  #Push everything into a new array
  while i < string_array.length
    letter = ''
    if string_array[i] === " "
      letter = string_array[i + 1].upcase!
      sentence_array += [string_array[i],letter]
      i += 2
    else
      sentence_array << string_array[i]
      i += 1
    end
  #return a new string by joining the new array elements
  end
  return sentence_array.join("")
end

#test
capitalize_words("this is a sentence")
