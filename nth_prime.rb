=begin
In this kata I take in an input number and return the prime number in
sequential order corresponding to the input number.
Essentially, what is the 10th prime number? It should be 29
=end

#Method to check if a number is prime
def is_prime?(number)
  if number <= 1
    return false
  end

  i = 2
  while i < number
    if (number % i) == 0
      return false
    end
    i += 1
  end
  return true
end

#everytime a number is prime, increase the counter by 1
#once the counter is equal to the input number, return the number minus 1
def nth_prime(n)
  number = 1
  counter = 0
  until counter == n
    if is_prime?(number) == true
      counter += 1
    end
    number += 1
  end
  return number - 1
end

puts nth_prime(4)
puts nth_prime(10)
