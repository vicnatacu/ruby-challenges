# Prime numbers

# A prime number is only divisible by itself and 1.
# 1 is not a prime number. The first prime number is 2.
# The first 50 prime numbers are:
# 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 
# 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 
# 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 
# 173, 179, 181, 191, 193, 197, 199, 211, 223, 227

# The Sieve of Eratosthenes can be used to identify the prime numbers
# in a range from 2 - n. It works by eliminating all of the composite (non-prime) numbers.
# By starting with the first prime number (2), the steps are:
# 1. Eliminate all multiples of the prime number up to n
# 2. Go to the next prime number

# What's left is the prime numbers. This is demonstrated in a short
# video here: https://www.youtube.com/watch?v=FBbHzy7v2Kg

# Your code should return the largest prime number that is less
# than or equal to the number given as an argument.
# For example: prime_number(45) => 43

# Assume only positive whole numbers >=2 are given as argument.

def prime_number(number)
    # Your code goes here
    (2...number-1).to_a.each do |num|
        return false if number % num == 0
    end
    return true
    
end

def prime_number(number)
    #create an array of all numbers
    numbers = (2...number).to_a
    #while we haven't eliminated all number up to number,
    #appy the sieve of eratosthenes
    while numbers.length > 0 do
        #set the new prime number and remove that from numbers
        prime = numbers.shift
        #remove multiples of prime form the array
        for n in numbers do
            #return if the number itself if it is prime
            if prime == number
                return number
            end
            #remove all multiples of prime
            if n % prime == 0
                numbers.delete(n)
            end
        end
    end
    return prime
end

puts prime_number(39)
puts prime_number(34)
puts prime_number(53)
puts prime_number(28)
puts prime_number(23)
puts prime_number(77)
puts prime_number(71)
puts prime_number(221)
puts prime_number(333)