
# BLOCKS

# simple block
arr = [1, 2, 3, 4]
arr.each { |n| puts n }
puts ''



# another block example
def run_block
  yield if block_given?
end

run_block do
  puts 'hello world'
end



# a more advanced block example
class Array
  def random_each(&b)
    shuffle.each do |el|
      b.call el
    end
  end
end

[1, 2, 3, 4].random_each do |el|
  puts el
end
puts ''



# PROCS



# passing procs into a method
def run_two_procs(a,b)
  a.call
  b.call
end

proc1 = Proc.new do
  puts 'this is proc1'
end

proc2 = Proc.new do
  puts 'this is proc2'
end

run_two_procs(proc1, proc2)
puts ''



# ways of calling a proc
my_proc = Proc.new do |a|
  puts a
end
my_proc.call(7)
my_proc.(77)
my_proc[777]
my_proc === 7777



# Proc switch
several = Proc.new { |num| num > 3 && num < 8 }
many = Proc.new { |num| num > 3 && num < 8 }
few = Proc.new { |num| num == 3 }
couple = Proc.new { |num| num == 2 }
none = Proc.new { |num| num == 0 }

0.upto(10) do |num|
  print "#{num} items is "

  case num
  when several
    puts 'several'
  when many
    puts 'many'
  when few
    puts 'few'
  when couple
    puts 'a couple'
  when none
    puts 'none at all'
  else
    puts 'awesome'
  end
end
puts ''




# Proc VS Lambda
def run_a_proc(p)
  puts 'starting to run a proc'
  p.call
  puts 'finished running the proc'
end

def test_comp
  # run_a_proc lambda { puts 'Im a lambda'; return } same as ->
  run_a_proc -> { puts 'Im a lambda'; return }
  puts ''
  run_a_proc proc { puts 'Im a proc'; return }
end

test_comp
puts ''




# Ruby procs/lambda docs...
# another Ex
def run_proc_closure(p)
  p.call
end

name = 'Fred'
print_a_name = proc {puts name}
run_proc_closure print_a_name
puts ''






# CLOSURES

# simple Ex
def multiple_generator(m)
  lambda do |n|
    n * m
  end
end

doubler = multiple_generator(2)
tripler = multiple_generator(3)

puts doubler[5] # => 10
puts tripler[5] # => 15
puts ''




# Proc var storage Ex
# Because ruby uses references the variables value changes when the proc is called
#  changing its value from when it was ran
def storage_proc(p)
  p.call
end

name = 'john'

print_a_name = proc { puts name }

name = 'smith'

storage_proc print_a_name # => smith
puts ''

