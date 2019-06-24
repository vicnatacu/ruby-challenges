# Good walk
# Difficulty: medium/hard

# You live in the city of Cartesia where all roads are laid out in a perfect grid. 
# You arrived ten minutes too early to an appointment, so you decided to take the 
# opportunity to go for a short walk. 

# The city provides its citizens with a Walk Generating App on their phones -- 
# everytime you press the button it sends you an array of one-letter strings 
# representing directions to walk (eg. ['n', 's', 'w', 'e']). Y
# ou always walk only a single block in a direction and you know it takes 
# you one minute to traverse one city block, so create a function that will 
# return true if the walk the app gives you will take you exactly ten minutes 
# (you don't want to be early or late!) and will, of course, return you to your starting point. 
# Return false otherwise.

# Rails uses rspec for testing by default
# rspec is automatically installed with Rails, but if you haven't installed Rails yet,
# you'll have to install it to use the tests included for this morning challenge:
#    sudo gem install rspec

# Then run the tests by just running:
#   rspec

# rspec uses a convention that it will run any file in a subdirectory called 'spec' that
# has a file name ending in _spec.rb

def good_walk(walk)
    walk_hash = Hash.new(0)
    walk.each { |direction| walk_hash[direction] += 1}
    return false if walk_hash['n'] + walk_hash['s'] + walk_hash['e'] + walk_hash['w'] != 10
    walk_hash['n'] == walk_hash['s'] && walk_hash['e'] == walk_hash['w'] ? true : false
end

def good_walk2(walk)
    return walk.length == 10 && walk.join(" ").gsub(/n|e/, "1").gsub(/s|w/, "-1").split(" ").map(&:to_i).sum == 0
end

def good_walk3(walk)
    return false if walk.length != 10
    position = [0,0]
    walk.each {|direction|
    case direction
    when 'n' then position[0] +=1
    when 's' then position[0] -=1
    when 'e' then position[1] +=1
    when 'w' then position[1] -=1
    end
}
return position.sum == 0
end
puts good_walk(['n','s','e','w','n','s','e','w','n','s']) # true
puts good_walk(['n','n','s','s','e','w','e','w','n','s']) # true
puts good_walk(['n','s','e','w','n','s','e','w']) # false
puts good_walk([]) # false
puts good_walk(['n','n','n','s','e','w','e','w','n','s']) # false


puts good_walk2(['n','s','e','w','n','s','e','w','n','s']) # true
puts good_walk2(['n','n','s','s','e','w','e','w','n','s']) # true
puts good_walk2(['n','s','e','w','n','s','e','w']) # false
puts good_walk2([]) # false
puts good_walk2(['n','n','n','s','e','w','e','w','n','s']) # false

puts good_walk3(['n','s','e','w','n','s','e','w','n','s']) # true
puts good_walk3(['n','n','s','s','e','w','e','w','n','s']) # true
puts good_walk3(['n','s','e','w','n','s','e','w']) # false
puts good_walk3([]) # false
puts good_walk3(['n','n','n','s','e','w','e','w','n','s']) # false
