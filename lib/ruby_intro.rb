# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  arr.each do |element|
    sum+=element
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum=0
  if arr.length == 0
    sum=0
  elsif arr.length == 1
    sum=arr[0]
  else
    arr = arr.sort { |a,b| b <=> a}
    sum = arr[0] + arr[1]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 or arr.length == 1
        return false
  end
  (0..arr.length-1).any? do |i| 
    arr[i+1..arr.length].any? { |x| x + arr[i] == n }
  end 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.upcase
  consonants = "BCDFGHJKLMNPQRSTVWXYZ"
  if s.length == 0
    return false
  elsif consonants.index(s[0])
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0
  return false
  end
  num=0
  for i in (s.length-1).downto(0)
    if(s[i]!='0' and s[i]!='1')
      return false
    end
    if(s[i]=='1')
      num+=2**(s.length-1-i)
    end
  end
  puts(num)
  return num%4==0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    if isbn.length==0 or price<=0
      raise ArgumentError
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$%.2f" % price
  end
end
