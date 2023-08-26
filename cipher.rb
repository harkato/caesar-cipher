def caesar_cipher(string, shift_factor)
    modified_string = number_to_character(number_shift(character_to_number(separate_string(string)), shift_factor)).join
    p modified_string
end

def separate_string(string)
    separated_string = string.split(//)
end

def character_to_number(array)
    array.each_with_index do |character, index|
        array[index] = character.ord
    end
end

def number_shift(array, shift_factor)
    shifted_array = []
    modified_num = 0
    array.each_with_index do |number, index|
        if number.between?(65,90) or number.between?(97,122)
            modified_num = number + shift_factor
            if modified_num>122 and number.between?(97,122)
                shift_factor_updated = modified_num-122
                modified_num = 96 + shift_factor_updated
            elsif modified_num>90 and number.between?(65,90)
                shift_factor_updated = modified_num-90
                modified_num = 64 + shift_factor_updated
            end
            shifted_array[index] = modified_num
        else
            shifted_array[index] = number
        end
    end
    shifted_array
end

def number_to_character(array)
    array.each_with_index do |character, index|
        array[index] = character.chr
    end
end

puts "Text something: "
string = gets.chomp

puts "Encription key (number): "
shift_factor = gets.chomp.to_i


caesar_cipher(string, shift_factor)
