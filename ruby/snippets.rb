

# Conditionals

expression = true

# Full if, elsif, else
if expression == true
  puts "true"
elsif expression != true
  puts "not true"
else
  puts "something else"
end

# One line if
#  order: thing to do, if, boolean expression
#  Note: no end statement
puts "Do something here" if expression == true

# With unless
sunny = false
puts "It's raining" unless sunny

# Ternary
puts expression == true ? "Is true" :  "If itn's not true"

# Case, when
today = "Monday"

case today
when "Monday"
  puts "Start of the week"
when "Saturday"
  puts "It's the weekend"
else
  puts "Some other day"
end

# case, when, then
case today
when "Monday" then puts "Start of the week"
when "Saturday" then puts "It's the weekend"
else
  puts "Some other day"
end

# Conditional Assignment
# ||=  , assign if not already set
name = nil
name ||= "Andrew"
name ||= "Colin"
puts name # Andrew

# Implicit Return
# Ruby methods return the value of the last evaluated expression
def add(a, b)
  a + b # Automatically returns value
end

puts add(2, 4)

# Repetition, looping and ranges
# .upto and .downto
20.upto(30) {|i| puts i}
100.downto(20) {|x| puts x}

# .next
puts 4.next

# Symbols
# Always point to the same thing
# Used in hashes instead of string keys
my_hash_string_keys = {
    "name" => "Andrew",
    "age" => 50
}

my_hash_symbol_rockets = {
    :name => "Andrew",
    :age => 50
}

my_hash_symbols = {
    name: "Andrew",
    age: 50
}

# Convert string to symbol
# .to_sym
puts my_hash_symbols["name".to_sym]
# Get Object ID
name_key = :name
puts name_key.object_id

# Respond to - .respondd_to?(symbol)
puts [1,2,3].respond_to?(:push)

# Arrays
numbers = [1,2,3,4]
# Access
puts numbers[2] # 3
# Push, pop
numbers.push(5)
puts numbers
numbers.pop(2) # removes n items from end of array
puts numbers

# Concatenation - pushes to arrays but also can replace +=
numbers << 6

# Looping Arrays
numbers.each {|x| puts x}

for n in numbers
    puts n
end

# String Interpolation
age = 50
# Instead of...
puts "I am " + age.to_s + " years old"
# ... use string interpolation
puts "I wish I was #{age - 20} years old"

# 'Splat' expands an array or turns args passed to method to array
arr = ["Andrew", "Colin"]
puts *arr

def arr_length(*args)
  puts "Number of args sent = #{args.length}"
end

arr_length(1,2,3,4)

# Array methods
# .to_a converts a range to an array
# .collect, .collect!, == .map, .map!
# .each, .sort, .sort!, .reverse, .reverse!
# .select == .find
#
# Yield
# Methods that yield can accept blocks
