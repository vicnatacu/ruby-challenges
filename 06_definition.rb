# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb

class Definition
    # Your code here
    def initialize()
        @wordlist = Hash.new
    end
    
    def add_word(word, definition)
        @wordlist.store(word, definition)
    end
    
    def lookup(word)
        return @wordlist[word]
    end
    
    def total_words
        return @wordlist.length
    end
end



 

definition = Definition.new
definition.add_word("ruby", "A red, precious stone")
definition.add_word("rails", "Lorem ipsum")
puts definition.total_words
puts definition.lookup("ruby") 
puts definition.lookup("rails") 

