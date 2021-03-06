# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  n = 0
  arr.each do |x| n += x end
  return n
end

def max_2_sum arr
  if arr.empty? == true
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
    arr.sort!
    n = arr.length
    n = arr[n-1] + arr[n-2]
    return n
end

def sum_to_n? arr, n
  # check array size
  return false if arr.length <= 1
   
  # now check to see if any two elements sun to n
  test = false
  arr.each do |x| 
    arr.each do |y| 
      if x != y and x + y == n
        test = true
      end
    end
  end
  return test
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4? s
  /^0+$|^[01]*00$/ === s
  # ^0+$ catches the '0' case
  # ^[01]*00$ cathes anything containing '0|1' provided it ends in '00'
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    # check the args
    raise ArgumentError if isbn.empty? || price <= 0
   
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf "$%.2f", @price
    # uses 'C'-like format specifier; can't think of 'Ruby' way to do this
  end
end
