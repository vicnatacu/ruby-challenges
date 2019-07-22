# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
# 
# If the shift pushes beyond the end of the alphabet, start back at 'A'
# Example: 
# c = CaesarCipher.new(1)
# c.encode('ZOO') # returns 'APP'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    @shift = shift
    @alphabet = ('A'..'Z').to_a
  end

  def encode(string)
    encoded = ""
    string.chars.map do |char| 
        ind = @alphabet.index(char.upcase)
        shifted = ind + @shift
        encoded += @alphabet[shifted > @alphabet.length-1 ? (@alphabet.length - shifted) : shifted]
    end
    return encoded
  end
  
  def decode(string)
    decoded = ""
    string.chars.map do |char|
        ind = @alphabet.index(char.upcase)
        shifted = ind - @shift
        decoded += @alphabet[shifted]
    end
    return decoded
  end
end

c = CaesarCipher.new(1)
c.encode('ZOO')


c = CaesarCipher.new(5) 
c.decode('BFKKQJX')