# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
    # your code goes here
    num = number.to_s.chars.map(&:to_i)

    #needs to be 3 numbers
   return false if num.length < 3
    #decrementing
   return true if num.reverse == num.sort
   #incrementing, 0 at the end after 9 is ok
   if num[-1] == 0
    num[-1] = 9
   end
   #decrementing, 0 at the end after 1 is ok
   if num[-1] == 0
    num[-1] = 1
   end
   #incrementing
   return true if num == num.sort
   #if all else wrong return
   return false
end
puts interesting_number(789) 
puts interesting_number(321) 
puts interesting_number(798) 
puts interesting_number(6) 
puts interesting_number(23)

# When the digits are incrementing, 0 comes after 9:
puts interesting_number(7890)
# When the digits are decrementing, 0 comes after 1:
puts interesting_number(3210) 