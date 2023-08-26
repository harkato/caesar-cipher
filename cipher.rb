def caesar_cipher(string, shift_factor)
    separated_string = string.split(//)
    characters_numbers = character_to_number(separated_string)
    p characters_numbers
end

def character_to_number(array)
    array.each_with_index do |character, index|
        array[index] = character.ord
    end
end

caesar_cipher("Hello World!", 5)
