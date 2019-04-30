# FizzBuzz

# Don't look this one up until you complete it yourself!
# It's a common interview question and there will be plenty
# of spoilers on the interwebs.

# Difficulty:
# 4/10

# This is a trivial question with many simple solutions.
# Try to write the least amount of code as possible.

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.

# Check your solution by running: ruby 11_fizzbuzz.rb

# Example:
# 1
# 2
# Fizz
# 4
# Buzz
# ...etc

# Your code here

(1..100).each do |n|
    if n % 3 == 0 && n % 5 == 0
        puts "fizzbuzz"
    elsif   
        n % 3 == 0
        puts "fizz"
    elsif
        n % 5 == 0
        puts "buzz"
    else
        puts n
    end
end

number = 0
while number < 100
    number += 1
    case
    when (number % 3 == 0 && number % 5 == 0)
        puts "fizzbuzz"
    when (number % 3 == 0)
        puts "fizz"
    when (number % 5 == 0)
        puts "buzz"
    else
        puts number
    end
end

for i in 1..100
    puts [i.to_s, (i % 3 == 0 ? "Fizz" : '') + (i % 5 == 0 ? "Buzz" : "")].max
    
    s = ""
    if i % 3 == 0
        s += "Fizz"
    end
    if 1 % 5 == 0
        s += "Buzz"
    end
    puts [i.to_s, s].max
end

for i in 1..100
    # second method using ternary and enumerable.max
    puts [i.to_s, (i % 3 == 0 ? "Fizz" : '') + (i % 5 == 0 ? "Buzz" : '')].max

    # below achieves does the same, but over mutliple lines for clarity

    s = ""              # initialize an empty string
    if i % 3 == 0       # if divisible by 3
        s += "Fizz"     # then add "Fizz" to s
    end
    if i % 5 == 0       # if divisible by 5
        s += "Buzz"     # then add "Buzz" to s
    end
    puts [i.to_s, s].max    # print the longest string, either the number or s
end