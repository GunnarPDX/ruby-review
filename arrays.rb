
# ARRAYS
# array = ['one', 'two', 'three'] # alternative method
array = %w[one two three]
puts array[0] # => one
puts ''
puts array # => one two three
puts ''


# BASIC ARRAY METHODS
array.pop # => one two
puts array
puts ''

array.push('bar') # => one two bar
puts array
puts ''

array.delete_at(0) # => two bar
puts array
puts ''

array.delete("two") # => bar
puts array
puts ''

array.push('bar') # => bar bar
puts array
puts ''

puts array.uniq # => bar
puts ''




# SELECT
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.select { |number| number > 4 } # => 5, 6, 7, 8, 9, 10
puts numbers # => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
puts ''

numbers.select! { |number| number > 4 } # this will apply the select
puts numbers # => 5, 6, 7, 8, 9, 10
puts ''


# ^ BANG !
# this will mutate the caller permanently

# it is possible that you could send an argument to
# a method and change that argument forever without knowing it !!!

# EX:

def mutate(arr)
  arr.pop # (no bang! here) mutates
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts a # => 1, 2, 3, 4, 5
puts ''




# COMPARING ARRAYS

a = [1, 2, 3]
b = [1, 2, 3]

puts(a == b) # => true
puts ''


# NESTED ARRAYS

teams = [['red 1', 'red 2'], ['blue 1', 'blue 2'], ['green 1', 'green 2']]

puts teams[0] # => 'red 1' 'red 2'
puts ''

puts teams[0][1] # => 'red 2'
puts ''

p teams # => [["red 1", "red 2"], ["blue 1", "blue 2"], ["green 1", "green 2"]]
puts ''

# flatten
p teams.flatten # => ["red 1", "red 2", "blue 1", "blue 2", "green 1", "green 2"]
puts ''



# Arr to String
a = [1, 2, 3]
puts a.to_s # => [1, 2, 3]
puts ''


# Arr join
b = a.join('-')
puts b # => 1-2-3
puts ''


# each_index
a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" }
puts ''


# each with index
a = ['a', 'b', 'b', 'c', 'd']
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
puts ''


# sort
a = [5, 3, 8, 2, 4, 1]
puts a.sort # => 1, 2, 3, 4, 5, 8
puts ''


# Product
p a.product([4, 5]) # => [[5, 4], [5, 5], [3, 4], [3, 5], [8, 4], [8, 5], [2, 4], [2, 5], [4, 4], [4, 5], [1, 4], [1, 5]]
puts ''


# Map
a = [1, 2, 3]
a.map { |x| x**2 } # => [1, 4, 9]







