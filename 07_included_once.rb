# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

def included_once (haystack, needle)
  # Your code here
  count = 0
  haystack.each do |stack|
    count += 1 if stack == needle
  end
  (count > 1 || count == 0) ? (return false) : (return true)

end

def included_once(haystack, needle)
  count = 0
  haystack.each do |stack|
    if stack == needle
      count += 1
    end
    if count > 1
      return false
    end
  end
  return count == 1
end

