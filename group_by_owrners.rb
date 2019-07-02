#Isaac
def group_by_owners(input)
    h = {}
    input.each { |file, own|
        (h[owner] ||= []) << file
}
    return h
end
 #Carlie
def group_by_owners(input)
    new_hash = Hash.new(0)
    input.each do |key, value|
        if new_hash[value] == 0
            new_hash[value] = [key]
        else
            new_hash[value].append key
        end
    end
    return new_hash
end

def flip(string, index)
    while index < string. length
        if string[index] == "1"
            string[index] == "0"
        else
            string[index] = "1"
        end
        index +=1
    end
end

def bin_flip(s)
    steps = 0
    index = 0
    while index < s.length
        if s[index] == 1
            flip(s, index)
            steps +=1
        end
        index +=1
    end
    return steps
end

 