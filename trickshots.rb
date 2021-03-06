# Ruby trickshots :)

# 1
puts rand(10...20)
puts ''



# 2
require 'ap'
ap [1, 2, 3]
puts ''



# 3
puts 'abc' + 'def'
puts 'abc' 'def'
puts ''



# 4
require 'ffi'
module Foo
  extend FFI::Library
  ffi_lib 'c'
  attach_function :strlen, [:string], :int
end
p Foo.strlen('abcde')
puts ''



# 5
require 'ripper'
ap Ripper.sexp("puts {}.class")
puts ''



# 6
names = %w{fred jess john}
ages = [38, 50, 78]

p names.zip(ages) # => [["fred", 38], ["jess", 50], ["john", 78]]
p Hash[names.zip(ages)] # => {"fred"=>38, "jess"=>50, "john"=>78}

locations = %w{spain france usa}
p names.zip(ages, locations) # => [["fred", 38, "spain"], ["jess", 50, "france"], ["john", 78, "usa"]]
puts ''

names.zip(ages, locations) do |foo|
  p foo
end
puts ''



# 7
p [*10...20] # => [10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
puts ''



# 8
def my_example_method
  p __method__
  p __callee__
end

my_example_method
puts ''



# 9
a = ->{ }
b = ->{ }

p a.source_location
p b.source_location
puts ''



# 10
string = 'Fred Flintstone: Superhero'

p string[/\w/] #=> F
p string[/\w+/] #=> Fred
p string[/(\w+) (\w+)/] #=> Fred Flintstone
p string[/(\w+) (\w+)/, 1] #=> Fred
p string[/(\w+) (\w+)/, 2] #=> Flintstone

string[/(?<a>\w+) (?<b>\w+)/]
p $~[:a] #=> Fred
p $~[:b] #=> Flintstone

string = 'xVal yVal'
/(?<x>\w+) (?<y>\w+)/ =~ string
p x # => xVal
p y # => yVal

puts ''



# 11
