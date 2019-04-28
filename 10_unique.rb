# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]

# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

def unique(mylist)
  # Your code here
  unique = []
  mylist.each do |ele|
    unique << ele if !unique.include?(ele)
  end
  unique
end

puts unique([1,3, 5, 5, 8, 10, 5])
puts unique(["sam", "tom", "harry", "tom"])