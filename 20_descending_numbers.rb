# Background
# Using array and string methods
# Passing in one argument

## Specs

#Your task is to make a function that can take any 
#non-negative integer as a argument and return it 
#with its digits in descending order. 
#Essentially, rearrange the digits to create 
#the highest possible number.

#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221

def descending_order(n)
    # Your code goes here
    array = n.to_s.split(//)
    array.sort.reverse.inject(:+).to_i
    
    
end

# Test your code here
puts descending_order(46829173)
puts descending_order(596979483217563321987537456)
puts descending_order(5628)

def descending_order(num)
    return num.digits.sort.reverse.join
end
puts descending_order(555234677)

# Add some interesting test cases that test edge cases

#solved using two different methods, but using ruby methods