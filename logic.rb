def caesar_cipher(string, shift_key)
    letters_az = ('a'..'z').to_a
    symbols = ["!", " ", "?", ":", "\'"]
    letters = string.split("")
    array = []

    letters.map do |letter|
        letters_az.each_with_index do |alphabet, index|

            if  letter.downcase == alphabet
                new_index = index + shift_key 
                if  new_index >= 26
                    new_index = new_index - 26 
                end
                if shift_key > 25
                    puts "Shift-Key limit exceeded! (25)"
                    return
                end
                result = letters_az[new_index]
                if  letter == alphabet
                    array << result 
                else
                    array << result.upcase
                end
            end  
        end
        symbols.each_with_index do |character, index|
            if letter == character
                result = symbols[index]
            end
            array << result
        end
    end
    p array.join()
end
puts "Write the secret \"message\" then the shift-key:"

caesar_cipher(gets.chomp, gets.to_i)