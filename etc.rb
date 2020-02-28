

# arr = [1, 2, 3, 4]
# arr.each { |n| puts n }


# def run_block
#  yield if block_given?
# end
#
# run_block do
#   puts 'hello world'
# end

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