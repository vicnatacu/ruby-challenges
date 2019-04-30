# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here


# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2
#creating hash
def count_words(input)
    # #testing
    # puts input
    input_arr = input.downcase.split(" ")
    output = {}
    # #testing
    # puts input_arr 
    input_arr.each  do |item|
        if output_contains_key?(output, item)
            output[item]+=1
        else
            output[item]=1
        end
        
    end
    output.each { |k, v| 
     puts "#{k} #{v}"
    }
end
    # hash iteration
    def output_contains_key?(output, key)
        output.each do |k, v|
            if k == key
                return true
            end
        end
        return false
    end

 #main program starts here   
puts "Please give me a phrase, saying or list of words."
input=gets.chomp
count_words(input)

puts "Please give me a phrase, saying or list of words."
input = gets.strip
count_words(input)
#count occurrence of each word in string
#input is a string(phrase)
#print list of words with occurence of each word(case insensitive)
def count_words(phrase)
    words_hash = Hash.new(0)
    phrase.split(" ").each do |word|
        words_hash[word.downcase]+=1
    end
    print_word_count(words_hash)
    return words_hash
end

def print_word(word_hash)
    words_hash.each do |key, value|
        puts "#{key} #{value}"
    end
end


