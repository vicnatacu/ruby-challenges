# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)
    # your code goes here
    alpha = ('a'..'z').to_a
    index = alpha.index word.first.downcase
    word.each do |letter|
        if letter.downcase != alpha[index]
            alpha[index] < letter ? (return alpha[index]) : (return alpha[index].upcase)
        end
        index +=1
    end

end
puts missing_letter(['a','b','c','d','f'])
puts missing_letter(['O','Q','R','S'])
puts missing_letter(['c','e','f','g','h'])
puts missing_letter(['L','M','N','P'])

