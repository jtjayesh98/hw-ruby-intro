# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |a| sum+=a }
  return sum
end

def max_2_sum arr
  if !arr.at(0) and !arr.at(1)
    return 0
  else
    if !arr.at(1)
      return arr.at(0)
    else
      a = arr.sort.last(2)
      sum = a.at(0)+a.at(1)
    end
  end
  return sum
end

def sum_to_n? arr, n
  if !arr.at(0) and !arr.at(1)
    return false
  else
    if !arr.at(1)
      return false
    else
      b = arr.combination(2)
      d = Array.new
      for c in b do
        d.push(c.at(0)+c.at(1))
      end
      for a in d do
        if a == n
          return true
        end
      end
      return false
    end
  end
end

# Part 2
def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
    return false
  else
    a = "BCDFGHJKLMNPQRSTVWXYZ"
    a.split('').each{ |c|
      if s[0].upcase == c 
        return true
      end
    }
    return false
  end
end

def binary_multiple_of_4? s
  if s.count('0') + s.count('1') != s.size() or s.size()== 0
    return false
  else
    a=s.to_i(2)
    if a%4==0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if price == 0 
      raise ArgumentError
    elsif price < 0
      raise ArgumentError
    else
      @price = price 
    end
    
    if isbn.size == 0
      raise ArgumentError
    else
      @isbn = isbn
    end
    
  end
  
  def price_as_string
    return "$%.2f" % [@price] 
  end 
end