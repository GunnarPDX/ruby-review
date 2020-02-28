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

names.zip(ages, locations) do |foo|
  p foo
end


# 7

