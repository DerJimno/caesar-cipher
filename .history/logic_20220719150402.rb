def caesar_cipher(string, shift_key)
    letters_az = ('a'..'z').to_a
    characters = [" ", "!", "?", ",", "." ,":", "'"]
    letters = string.downcase.split("")
    array = []

    letters.map do |letter|
        letters_az.each_with_index do |alphabet, index|

            if  letter == alphabet
                new_index = index + shift_key 
                if  new_index >= 26 
                    new_index = new_index - 26 
                end
                result = letters_az[new_index]
                array << result   
            end  
        end

        characters.each do |character|
            if letter == " "
                result = characters[0]
            end
            if letter == "!"
                result = characters[1]
            end
            if letter == "?"
                result = characters[2]
            end
            if letter == ","
                result = characters[3]
            end
            if letter == "."
                result = characters[4]
            end
            if letter == ":"
                result = characters[5]
            end
            if letter == "'"
                result = characters[6]
            end
                $ring = "#{result}"
        end
        array << $ring
    end
    p array.join().capitalize
end
puts "Write the secret then the shift-key:"
caesar_cipher(gets.chomp, gets.to_i)
puts "Bingo!"