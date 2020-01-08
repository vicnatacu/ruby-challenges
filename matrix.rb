# Write a function (in ruby or javascript) that takes as input two matrices, and returns a matrix with the sum of the inputs.
# Do some validation to confirm the addition is allowed given the shape of the two inputs.
class Matrix(x,y) 

    def initialize
        @x =

x = Matrix[[1, 2, 3], [4, 5, 6], [7, 8, 9]]  

 y = Matrix[[9, 8, 7],[6, 5, 4],[3, 2, 1]]
    
  result = Matrix.combine(x,y) {|a,b| a + b}  
end   
  puts result


