# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#  'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

def Sluggish(fish) # O(n^2) # NG not O(n^2)
    longest = ""
    longest_length = 0

    (0...fish.length-1).each do |i|
        # (i+1..fish.length-1).each do |j|
            # if fish[j].length > fish[i].length 
            if fish[i].length > longest_length 
                longest_length = fish[i].length
                longest = fish[i]
            end
        # end
    end
    
    longest
end

def dominant(fish) # O(n log n)
    return fish if fish.length == 1

    pivot = fish.shift
    right = []
    fish.each do |fish|
        if fish.length > pivot.length
            right << fish
        end
    end

    dominant(right)
end


def def Clever1(fish) # O(n)
    longest = fish.shift

    fish.inject { |longest, fish| acc.length > fish.length ? acc : fish }
end

def Clever2(fish) # O(n)
    longest = fish.first

    (1..fish.length-1).each do |i|
        if fish[i].length > longest.length
            longest = fish.length 
        end
    end

    longest
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

def slow_dance(direction, tiles_array)

    tiles_array.each_with_index do |tile, idx|
        if direction == tile
            return idx
        end
    end
    
end

new_tiles_data_structure = { up:0, right-up:1, right:2, right-down:3, down:4, left-down:5, 
                left:6, left-up:7}

def slow_dance(direction, new_tiles_data_structure)
    new_tiles_data_structure[direction]
end
