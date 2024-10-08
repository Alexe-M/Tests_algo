

def string_into_array(message)
  array_with_initial_letters = message.chars
  return array_with_initial_letters
end
  
def letter_to_number(array_with_initial_letters)
  array_with_ASCII_number = []

  array_with_initial_letters.each do |i|
    array_with_ASCII_number << i.ord
  end

  return array_with_ASCII_number
end

def number_to_crypt_number(array_with_ASCII_number, c)
  array_with_crypt_number = []

  array_with_ASCII_number.each do |i|
    if i >= 65 && i <= 90 
      if i + c > 90
        array_with_crypt_number << i + c - 26
      else
        array_with_crypt_number << i + c
      end
    
    elsif i>= 97 && i <= 122
      if i + c > 122
        array_with_crypt_number << i + c - 26
      else
        array_with_crypt_number << i + c
      end 
    elsif (i < 65 || i > 90) || (i < 97 || i > 122)
      array_with_crypt_number << i
    end

  end
  return array_with_crypt_number
end
  
def crypt_number_to_crypt_letter(array_with_crypt_number)
  array_with_crypt_letter = []

  array_with_crypt_number.each do |i|
    array_with_crypt_letter << i.chr
  end
  return array_with_crypt_letter
end
  
def crypt_array_to_crypt_string(array_with_crypt_letter)
  crypt_message = array_with_crypt_letter.join("")
  return crypt_message
end
  
def perform(message, a)
  array_with_initial_letters = string_into_array(message)
  array_with_ASCII_number = letter_to_number(array_with_initial_letters)
  c = 3
  array_with_crypt_number = number_to_crypt_number(array_with_ASCII_number, c)
  array_with_crypt_letter = crypt_number_to_crypt_letter(array_with_crypt_number)
  crypt_message = crypt_array_to_crypt_string(array_with_crypt_letter)
  return crypt_message
end
  

  
  
  
  

