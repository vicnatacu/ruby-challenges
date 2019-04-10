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
    def initialize()
    @wordlist = Hash.new
    end


    def add_word(word, definition)
        @wordlist.store(word, definition)
    end
        
    def lookup(word)
        # @wordlist.each do |words|
            return @wordlist[word]
        # end
    end

    def total_words
        return @wordlist.length
        
    end

end

dictionary = Definition.new
dictionary.add_word("Peridot", "is a light green semi precious stone")
dictionary.add_word("rails", "Lorem ipsum")
puts dictionary.total_words
puts dictionary.lookup("Peridot") 
puts dictionary.lookup("rails") 


