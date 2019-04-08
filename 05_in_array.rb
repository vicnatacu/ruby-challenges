# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.




#Using a for loop
def in_array(needle, haystack)
  for hay in haystack
    if hay == needle 
      return true
    end
  end
  return false
end  

#using ruby native method .include? 
def in_array(needle, haystack)
  haystack.include?(needle) 

end

#Using a .each loop
def in_array(needle, haystack)
  
  haystack.each do |hay|
    if hay == needle
      return true 
    end
   
  end
  return false
end

#Using a while loop
def in_array(needle,haystack)
  i = 0
  while i < haystack.length do
    if haystack[i] == needle
      return true
    end
    i += 1
  end
  return false
end




puts in_array("drake", ["jayz", "kanye", "yachty"])



puts in_array("hello", ["hi","howdy","hello"])
# puts in_array("happy". ["sad", "good","glad"])
# Beast Mode:

# Redo the challenge but try solving it again in a different way.