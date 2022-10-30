def caesar_cipher(string, shift_key)
  letters_az = ('a'..'z').to_a
  symbols = ['!', ' ', '?', ':', '\'']
  letters = string.split('')
  array = []

  letters.map do |letter|
    letters_az.each_with_index do |alphabet, index|
      next unless letter.downcase == alphabet

      new_index = index + shift_key
      new_index -= 26 if new_index >= 26
      if shift_key > 25
        puts 'Shift-Key limit exceeded! (25)'
        return
      end
      result = letters_az[new_index]
      array << if letter == alphabet
                 result
               else
                 result.upcase
               end
    end
    symbols.each_with_index do |character, index|
      result = symbols[index] if letter == character
      array << result
    end
  end
  p array.join
end
puts 'Write the secret \"message\" then the shift-key:'

caesar_cipher(gets.chomp, gets.to_i)
