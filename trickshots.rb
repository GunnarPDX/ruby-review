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
