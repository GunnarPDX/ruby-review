
# MODULES

# Ex
module Foo
  def bar
    puts 'hello world'
  end
end

module Foo2
  def bar
    puts 'Goodbye world'
  end
end

class MyClass
  include Foo
  include Foo2 # <- called first
end

MyClass.new.bar
puts ''



# Alternate Ex
module A
  def self.included(base); puts self.name; end
end

module B
  def self.included(base); puts self.name; end
end

module C
  def self.included(base); puts self.name; end
end

class D
  include A, B, C # <- included on same line and called
end

