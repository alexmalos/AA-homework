def sluggish_octopus(fish_arr)
    biggest_fish = ''

    fish_arr.each do |fish1|
        fish_arr.each do |fish2|
            biggest_fish = fish2 if fish2.length > fish1.length
        end
    end

    biggest_fish
end

fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

p sluggish_octopus(fish_arr)