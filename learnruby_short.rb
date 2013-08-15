# learnxinyminutes.com

# First and foremost: Everything is an object.

# Numbers are objects

3.class #=> Fixnum

3.to_s #=> "3"

# print to the output
puts "I'm printing!"

# Variables
x = 25 #=> 25
x #=> 25

# This is an array
array = [1, 2, 3, 4, 5] #=> [1, 2, 3, 4, 5]

# Control structures

if true
  "if statement"
elsif false
  "else if, optional"
else
  "else, also optional"
end

for counter in 1..5
  puts "iteration" + counter
end

(1..5).each do |counter|
  puts "iteration" + counter
end

# The contents of data structures can also be iterated using each.
array.each do |element|
  puts element + " is part of the array"
end

# Symbols (are objects)
# Symbols are immutable, reusable constants represented internally by an
# integer value. They're often used instead of strings to efficiently convey
# specific, meaningful values

:pending.class #=> Symbol

status = :pending

# Functions

def double(x)
  x * 2
end