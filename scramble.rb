=begin
In this kata, I Write a method that takes in a string and an array of indices.
I produce a new string that scrambles the letters in the input string by their
positions in the order of the positions array.
=end

def scramble_string(string, positions)
  #Set an empty array to store the new scrambled string
  scrambled = []
  #split the string into an array
  #loop through both and if string element index equals the value of that spot,
  #and throw it into the new array
  string_a = string.split('')
  positions.each do |num|
    string_a.each_with_index do |letter, idx|
      if num == idx
        scrambled << letter
      end
    end
  end
   return scrambled.join('')
end

#test
scramble_string("abcd", [3, 1, 2, 0])
scramble_string("kelauni", [5, 3, 1, 6, 4, 2, 0])
