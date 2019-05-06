# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb



# Your code here
#collecting input in a secure way
def collectinput
    puts "Please type 3 or 4 words"
    input = gets.strip
    system("clear")
    return input
end
    
def protect_same(input_one, input_two)
    #for comparing purposes put inputs into an array
    input_one = input_one.downcase.split(" ")
    input_two = input_two.downcase.split(" ")

    #Initialize empty array for first input
    output = []

    #Iterate over input_one and compare to input_two
    for word in input_one
        if input_two.include?(word)
            output << "HIDDEN"
        else
            output << word
        end
    end
    return output.join(" ")
end

input_one = collectinput
input_two = collectinput

puts protect_same(input_one, input_two)

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.