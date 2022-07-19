def caesar_cipher(string, shift_by)

    letters_az = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    letters_char = [" ", "!", "?", ",", "." ,":"]
    letters = string.downcase.split("")
    array = []
    letters.map do |letter|

        letters_az.each_with_index do |alphabet, index|

            if  letter != alphabet
                new_index = nil
            elsif  letter == alphabet
                new_index = index + shift_by 
                if  new_index >= 26 
                new_index = new_index - 26 

                
                end
                result = letters_az[new_index] 
               
                #puts result
                $string = "#{result}"
            array << $string   
            end  
        end
        letters_char.map do |alpha|

            if letter == " "
                result = letters_char[0]
            end
            if letter == "!"
                result = letters_char[1]
            end
            if letter == "?"
                result = letters_char[2]
            end
            if letter == ","
                result = letters_char[3]
            end
            if letter == "."
                result = letters_char[4]
            end
            if letter == ":"
                result = letters_char[5]
            end
                $ring = "#{result}"
        end
       
      
      array << $ring
    end
    #array[array_char] = " "
    p array.join()


 

end
caesar_cipher("vxhrwx fp qeb ifcb tb zelpb! ploov cxqebo? f txpkq qll zxoov, xka qexq'p xii.", 3)