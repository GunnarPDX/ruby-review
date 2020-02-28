
# HASH

# basic hash
# hash = {:dog => 'barks', :cat => 'meows', :pig => 'oinks'} this is the old way
hash = { dog: 'barks', cat: 'meows', pig: 'oinks' } # new way
puts hash[:cat] # => meows
puts ''



# Adding to hash
person = { height: '6 ft', weight: '160 lbs' }
person[:hair] = 'brown'
p person # => {:height=>"6 ft", :weight=>"160 lbs", :hair=>"brown"}
puts ''



# Removing from hash
person.delete(:hair) # => {:height=>"6 ft", :weight=>"160 lbs"}
p person
puts ''



# Merging Hashes
person.merge!(hash)
p person # => {:height=>"6 ft", :weight=>"160 lbs", :dog=>"barks", :cat=>"meows", :pig=>"oinks"}
puts ''



# Iteration over hash
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
puts ''



# Optional params
def greeting(company, options = {})
  if options.empty?
    puts company
  else
    puts company + " is #{options[:age]} years old and was founded in #{options[:city]}."
  end
end

# => foobar.corp
greeting("foobar.corp")
puts ''

# => foobar.corp is 62 years old and was founded in New York City.
greeting("foobar.corp", {age: 62, city: "New York City"})
puts ''

# => foobar.corp is 62 years old and was founded in New York City.
greeting("foobar.corp", age: 62, city: "New York City")
puts ''



# has_key?
colors = {white: '#ffffff', red: '#ff0000', green: '#00ff00', blue: '#0000ff', black: '#000000'}
p colors.has_key?(:red) # => true
puts ''

# select
p colors.select{ |k,v| k == :red || v == "#ffffff" } # => {:white=>"#ffffff", :red=>"#ff0000"}
puts ''

# fetch
p colors.fetch(:red) # => "#ff0000"
puts ''

# to_a
p colors.to_a # => [[:white, "#ffffff"], [:red, "#ff0000"], [:green, "#00ff00"], [:blue, "#0000ff"], [:black, "#000000"]]
puts ''

# keys
p colors.keys # => [:white, :red, :green, :blue, :black]
puts ''

# values
p colors.values # => ["#ffffff", "#ff0000", "#00ff00", "#0000ff", "#000000"]
puts ''

