# Methods
# Ruby is pass-by-value, but all the values are references.


# Simple method
def example_method(words)
  puts words
end
example_method('')
example_method('This is a example method')
puts ''



# Using default Params
def example_default(words = 'this is printed when no arguments are given')
  puts words
end
example_default # same as -> example_default()
example_default('but we can still pass in our own arguments')
puts ''



# Mutating the caller (this wont work)
a = 5
def some_method(number)
  number = 7 # this is implicitly returned by the method
end
some_method(a)
puts a # => 5 not 7
puts ''



# we can return the value though
# 'return' syntax is not required in order to return something from a method
def add_three(number)
  number + 3
end
returned_value = add_three(4)
puts returned_value # => 7 (4 + 3)
puts ''



# we can use return to break early though
def add_three_or_four(number)
  return number + 3
  number + 4
end
returned_value = add_three_or_four(4)
puts returned_value # => 7 not 8



# An interesting example
# this wont work
some_string = 'this wont change'
def my_method(arg)
  arg = 'different text'
end
my_method(some_string)
puts some_string


# but this will ??
def another_method(arg)
  # Changing the value of the object it references
  arg.gsub!(/this wont change/, 'now it will??')
end
another_method(some_string)
puts some_string # => it changed, but its good to try and avoid code like this
puts ''

# some functions in ruby will do this, others wont, so be careful and learn
# which ones behave as 'pass by value' and which ones behave as 'pass by ref...'




# CHAINING
def return_three
  3
end

return_three.times { puts 'this should print 3 times' }
puts ''


# another example
'hi there'.length.to_s # => 8
puts ''




# METHODS AS ARGUMENTS

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end

multiply(add(20, 45), subtract(80, 10)) # => 4550
puts ''





