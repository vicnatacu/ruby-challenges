def reverse(string)
    i = string.length - 1
    rev_string = ""
    while i  >= 0
        rev_string += string[i]
        i -= 1
    end
    return rev_string
    
end

puts reverse("esrever ot deen ew ,yltsrif")
puts reverse("firstly, we need to reverse")
puts reverse("cat")
puts reverse("tac")