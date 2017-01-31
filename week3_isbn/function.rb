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
      string_num.delete! characters 
  end 
     
  string_num
end