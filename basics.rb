# to run: $ ruby start.rb

puts 'Hello, world!'
puts ''



# SYMBOLS

# :name
# :a_symbol
# :"surprisingly, this is also a symbol"


# PRINT
puts 'text'
p 'text'
puts ''



# VARIABLES
# set a basic str variable
message = 'test-message'
puts message
puts ''

# set a basic int variable
number = 10
puts number
puts ''

# convert type
p number # => 10
p number.to_s # => "10" (makes the int into a str)



# CONDITIONALS

a = 3

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end
puts ''


# fizz-buzz example
def fizzbuzz(limit)
  1.upto(limit).each do |n|
    line = ''
    line << 'Fizz' if n % 3 == 0
    line << 'Buzz' if n % 5 == 0
    line = n if line.empty?
    p line
  end
end

# fizzbuzz(30)
puts ''


# 1 liner
# (1..10).each { |n| p n % 15 == 0 ? "FizzBuzz" : n % 5 == 0 ? "Buzz" : n % 3 == 0 ? "Fizz" : n }
puts ''


# and         &&
# or          ||
# not         !
# ternary     (condition) ? T : F
# equals      ==
# not-equal   !=
# these are all the same... > < >= <= ....


# SUBSUMPTION OPERATOR ===
p((1..5) === 3) #                 => true
p((1..5) === 6) #                 => false

p(Integer === 42) #               => true
p(Integer === 'fourtytwo') #      => false

p(/ell/ === 'Hello') #            => true
p(/ell/ === 'Foobar') #           => false
puts ''


# REGEX
string = 'bob'
puts 'string has a b' if string =~ /b/ # => string has a b
puts ''

puts /b/.match(string) # => b
puts ''


# Pointers
a = "hi there"
b = a
a = "not here"
puts b # => hi there
puts ''


a = "hi there"
b = a
a << ", Bob"
puts b # => hi there, Bob
puts ''


