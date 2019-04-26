# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

# def vowels (string)
#   # Your code here
 
#   return string.scan(/[AEIOUaeiou]/) 
# end

# puts vowels("This BROwN fOx is ExcellENt. He jUmp Over thE hIll")

def vowels (string)
  vowels = []
  string.chomp.split(//).each do |letter|
    if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "A" || letter == "E" || letter == "I" || letter == "O" || letter == "U"
       vowels.push(letter)
    end
  end
  return vowels
end

puts vowels("ThIs a brown cow and shE jUmped Over the HIgh haystAck ElegAntLy")


