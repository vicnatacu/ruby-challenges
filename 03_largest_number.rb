# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?


# def largest_number (number_1, number_2) #Defining a method
# nums = [number_1, number_2] #Declaring a array to access number
#   if number_1.is_a? Numeric and number_2.is_a? Numeric #If statemtns to make sure Numeric is a master class
#     puts nums.max() #Prints max number
#   else
#     puts "Invalid input" #Prints "Invalid input"
#   end
# end
 
# largest_number(56,26)

# def largest_number(num1, num2)
#     if num1 > num2 
#         puts num1
#     elsif
#         num1 < num2
#         puts num2
#     else  
#         num1 = num2
#         puts "equal"
        
#     end
# end
# largest_number(100, 50)
# largest_number(2, 1000)
# largest_number(40, 40)
# def is_a_numeric(num_a, num_b)
#     num = [num_a, num_b]
#     if (num_a.is_a? Numeric) && (num_b.is_a? Numeric)
#         return  p num.max() 
#     else 
#         return  p "Invalid input"
#     end
# end
# is_a_numeric(50, 45)
# is_a_numeric(2, 52)
# is_a_numeric("happy", "sad")


def kind_of(num_x, num_y)
    num = [num_x, num_y]
    if (num_x.kind_of? Numeric) && (num_y.kind_of? Numeric)
        return p num.max()
    else
        return p "Invalid input"
    end
end
kind_of(2,22)
kind_of(89, 105.0)
kind_of("good", "bad")