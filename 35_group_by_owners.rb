# Group by owners
# Implement a group_by_owners function that:
# Accepts a hash containing the file owner name for each file name.
# Returns a hash containing an array of file names for each owner name, in any order.

# Example: 
# group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}
# should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}

# Have a look at the tests and take note of the different expect assertions used.
# Using these assertions allows testing without expecting a particular order of the files
# in the lists for each owner.

def group_by_owners(input)
    # Your code goes here
    output = {}
    input.each do |file,owner|
        if output.key?(owner)
            output[owner] << file
        else    
            output[owner] = [file]
        end
    end
    return output
end



output_hash = {}
output_hash = group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Randy', 'Output.txt' => 'Randy'})
puts output_hash


# Expected Output:
# output_hash = {'Randy' => ['Input.txt', 'Code.py' , 'Output.txt']}
