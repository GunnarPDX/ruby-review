# Loops and iterators

# run: $ ruby loops.rb

puts ''
puts 'do loop'
# => 2, 4
i = 0
loop do
  i += 2
  puts i
  if i == 4
    break # this will cause execution to exit the loop
  end
end


puts ''
puts 'for loop'
# => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
for i in 1..10 do
  puts i
end


puts ''
puts 'do, next, break loop'
# => 2, 6, 8, 10
i = 0
loop do
  i += 2
  if i == 4
    next # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end


puts ''
puts 'while loop'
# => 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0
x = 10
while x >= 0
  puts x
  x -= 1
end


puts ''
puts 'until loop'
# => 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0
x = 10
until x < 0
  puts x
  x -= 1
end


puts ''
puts 'for array loop'
# => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for i in x do
  puts i
end


puts ''
puts 'while w/conditional loop'
# => 1, 3, 5, 7, 9
x = 0
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end


puts ''
puts 'each iterator'
# => 1, 2, 3, 4, 5, 6
names = [1, 2, 3, 4, 5, 6]
names.each { |name| puts name }


puts ''
puts 'each do iterator'
# => 1, 2, 3, 4, 5, 6
names.each do |name|
  puts name
end


puts ''
puts 'another each do iterator'
[1, 2, 3].each do |num|
  puts num
end



# Recursion

puts ''
puts 'recursive fib num'
# => 8
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)