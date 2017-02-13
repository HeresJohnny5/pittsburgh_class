def valid_isbn_length?(string_num)
  #takes in string and returns boolean
  string_num.length == 10 || string_num.length == 13 ? true : false
end

def remove_disallowed_characters_from_isbn(string_num)
  #takes in a string and returns a string without disallowed characters
  string_num.gsub(/\D/, '')
end

def string_to_array(string)
  #takes in string and returns array
  string.split("")
end

#************************
def update_check_digit_containing_X(isbn_number_array)
  #if last digit of isbn10 is x or X then x or X = "10"
  #take in array and return array that updates x or X to 10
  isbn_number_array[9] = "10" if isbn_number_array[9] == "x" || isbn_number_array[9] == "X"

  isbn_number_array
end

#************************
#this is unnecessary due to remove_disallowed_characters_from_isbn
def only_numbers_in_my_array?(isbn_array)
  #join array to apply regex functionality
  nums_only = isbn_array.join("")
  true if nums_only =~ /\D/
end

def valid_10_digit_isbn?(array_of_nums)
  #take in array of nums and return boolean
  array = array_of_nums.map{ |num| num.to_i }

  sum = 0

  array.each.with_index{ |value, index| sum += (value * (index + 1)) if index < 9}

  check_digit = sum % 11

  check_digit == array[9]
end

def valid_13_digit_isbn?(isbn_array_of_nums)
  #take in array of nums and return boolean
  array = isbn_array_of_nums.map{ |num| num.to_i }

  sum = 0
  check_digit = 0

  array.each_with_index do |value, index|
    break if index == 12
    if index % 2 == 0
      sum += value * 1
    else
      sum += value * 3
    end
  end

  sum = sum % 10
  check_digit = (10 - sum)
  #check_digit = 8

  if check_digit == 10
    check_digit = 0
  end

  array[12] == check_digit
end
puts valid_13_digit_isbn?(["9","7","8","0","1","5","6","0","2","7","3","2","8"])

# def valid_isbn?(isbn_string_to_evaluate)
#   no_invalid_characters = remove_disallowed_characters_from_isbn(isbn_string_to_evaluate)
#   isbn_array = string_to_array(no_invalid_characters)
#
#   if isbn_array.length == 10
#     x_equals_10 = update_check_digit_containing_X(isbn_array)
#
#     if only_numbers_in_my_array?(x_equals_10) == false
#       false
#     else
#       valid_10_digit_isbn?(x_equals_10)
#     end
#
#   elsif isbn_array.length == 13
#     if only_numbers_in_my_array?(isbn_array) == false
#       false
#     else
#       valid_13_digit_isbn?(isbn_array)
#     end
#   else
#     false
#   end
# end
