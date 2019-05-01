# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

#All following examples run successfully with the test, all three achieve with different methods

#my example, simple and follows pattern of fibonacci
#worked when run with a large number like 10000
def nthFibonacci (n)
  # Your code here
  a = 0
  b = 1
  n.times do
    temp = a
    a = b
    b = temp + b
  end
  return a
end

puts nthFibonacci(1000)
puts nthFibonacci(2)

#Isaac's recursion example
#Isacc's fails when run with a large number like 1000 or higher
def nthFibonacci(n)
  if n == 1
    return 1

  elsif n == 2
    return 1

  else n > 2
    n = nthFibonacci(n-1) + nthFibonacci(n-2)
  end
end
#Recursions is when the method is called within the method, as in above.
puts nthFibonacci(15)

#Carlie's example, is array and stores each in the array
#Works wnen run with a large number like 1000
def nthFibonacci(n)
  fibonacci = []
  a = 0 
  b = 1

  while n >= fibonacci.length
    fibonacci.push(a)
    fibonacci.push(b)
    a = a + b
    b = a + b
  end
  return fibonacci[n]
end

puts nthFibonacci(1000)