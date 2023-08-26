def caesar_cipher(string, shift_factor)
    separated_string = string.split(//)
    characters_numbers = character_to_number(separated_string)
    shifted_numbers = number_shift(characters_numbers, shift_factor)
    p characters_numbers, shifted_numbers
end

def character_to_number(array)
    array.each_with_index do |character, index|
        array[index] = character.ord
    end
end

def number_shift(array, shift_factor)
    array.each do |number|
        if number.between?(65,90) or number.between?(97,122)
            number += shift_factor
            case number
            when number>90
                shift_factor = number-90
                number = 65 + shift_factor
                return number
            when number>122
                shift_factor = number-122
                number = 97 + shift_factor
                return number
            end
            number
        end
    end
end

caesar_cipher("Hello World!", 5)
