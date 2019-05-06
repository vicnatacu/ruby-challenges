# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb



# Your code here
def change_letters(input)
    puts "Please type a word"
    input = gets.strip.downcase.split(//)
    input.each do |letter|
        if letter == "s"
            input[input.index(letter)] = "th"
            
        end
    end
    return input.join
end
puts change_letters("input")