# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
      return 0
  else
      res = 0
      for n in arr
          res += n
      end
      return res
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
      return 0
  elsif arr.length == 1
      return arr[0]
  else
      sorted_arr = arr.sort
      return sorted_arr[-1] + sorted_arr[-2]
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  s = Set[]
  for i in 0..(arr.length-1)
      if s.include?(arr[i])
          return true
      end
      s.add(number - arr[i])
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
      return false
  end
  vowel = ["A", "E", "I", "O", "U"]
  char = string.to_s[0].upcase
  if vowel.include? char
      return false
  end
  return char =~ /[[:alpha:]]/
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length == 0
      return false
  end
  if string !~ /[^01]/
      return string.to_i % 4 == 0
  else
      return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
      @isbn = isbn
      @price = price
      if @price <= 0 or @isbn.empty?
          raise ArgumentError
      end
  end
  
  def price_as_string
      return "$#{'%.2f' % @price}"
  end
end
