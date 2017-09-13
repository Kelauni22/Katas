=begin
When you input a number of any size, any odd numbers will have a dash before and
after the number. There are no dashes at the beginning or end of the returned
string.
=end

def dasherize_number(num)
  num_array =[]
  #make num into and individual array of numbers
  new_num = num.to_s.split('').map {|num| num.to_i}
  if new_num[0] % 2 == 1  #check the first element
    num_array += [new_num[0],"-"] #if odd, push number/dash into the array
  else
    num_array << new_num[0] #if even, push as is into array
  end
  #circle through each number
  i = 1 #starting at the next element
  while i < new_num.size
    if new_num[i] % 2 == 0 #if the number is even, push into new array
      num_array << new_num[i]
    else
      #if the number is odd, push two dashes and number into array
      num_array += ["-", new_num[i],"-"]
    end
    i+=1
  end
  #take out the trailing dash
  if num_array[-1] == "-" then num_array.pop end
  #take out double dashes
  i=0
  while i < num_array.size
    if (num_array[i] == "-" && num_array[i-1] == "-")
      num_array.delete_at(i)
    end
    i+=1;
  end
  #join everything in the array to return a final string
  final_string = num_array.join("")
end

#Below is the kata answer (a more simple way to write this)

def dasherize_number(num)
  num_s = num.to_s

  result = ""

  idx = 0
  while idx < num_s.length
    digit = num_s[idx].to_i

    if (idx > 0)
      prev_digit = num_s[idx - 1].to_i
      if (prev_digit % 2 == 1) || (digit % 2 == 1)
        result += "-"
      end
    end
    result += num_s[idx]

    idx += 1
  end

  return result
end
