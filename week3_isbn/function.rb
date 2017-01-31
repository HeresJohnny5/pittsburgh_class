def valid_isbn_length?(string_num)
  #takes in string and returns boolean
  if string_num.length == 10 || string_num.length == 13
    true
  else
    false
  end
end

def remove_disallowed_characters_from_isbn(string_num)
  #takes in a string and returns a string without disallowed characters
  disallowed_characters = [ " ", "-", "\n", "\""]

  disallowed_characters.each do |characters|
    string_num.delete!(characters) 
  end 
     
  string_num
end

def string_to_array(string)
  #takes in string and returns array
  string.split("")
end

def update_check_digit_containing_X(isbn_number_array)
  #if last digit of isbn10 is x or X then x or X = "10"
  #take in array and return array that updates x or X to 10
  if isbn_number_array[9] == "x" || isbn_number_array[9] == "X"
    isbn_number_array[9] = "10"
  end
  
  isbn_number_array
end