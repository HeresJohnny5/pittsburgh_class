require 'minitest/autorun'
require_relative 'function.rb'

class TestValidIsbnLength < Minitest::Test
  def test_empty_string_returns_false()
    assert_equal(false, valid_isbn_length?(""))
  end

  def test_10_digit_string_returns_true()
    assert_equal(true, valid_isbn_length?("0471958697"))
  end

  def test_5_digit_string_returns_false()
    assert_equal(false, valid_isbn_length?("04719"))
  end

  def test_13_digit_string_returns_true()
    assert_equal(true, valid_isbn_length?("9780470059029"))
  end
end

class TestDisallowedCharactersFunction < Minitest::Test
  def test_to_remove_extra_characters
    assert_equal("1234567890", remove_disallowed_characters_from_isbn("12 3-4567-89 0"))
    assert_equal("1234567890", remove_disallowed_characters_from_isbn("1234567890\n"))
    assert_equal("1234567890", remove_disallowed_characters_from_isbn("123 456-7890\n"))
    assert_equal("1234567890", remove_disallowed_characters_from_isbn("1234567890"))
  end
end

class TestConvertsStringToArray < Minitest::Test
  def test_string_returns_empty_array
    assert_equal([], string_to_array(""))
  end

  def test_12345_string_returns_array_with_12345
    assert_equal(["1", "2", "3", "4", "5"], string_to_array("12345"))
  end

  def test_4567898765325_string_returns_array_with_4567898765325
    assert_equal(["4", "5", "6", "7", "8","9","8","7","6","5","3","2","5"], string_to_array("4567898765325"))
  end
end

class TestReplaceXwith10Function < Minitest::Test
  def test_for_X_to_be_replaced_with_10_at_check_degit_pos
    assert_equal(["0","8","0","4","4","2","9","5","7","10"], update_check_digit_containing_X(["0","8","0","4","4","2","9","5","7","x"]))
    assert_equal(["0","8","0","4","4","2","9","5","7","8"], update_check_digit_containing_X(["0","8","0","4","4","2","9","5","7","8"]))
    assert_equal(["0","8","0","4","x","2","9","5","7","8"], update_check_digit_containing_X(["0","8","0","4","x","2","9","5","7","8"]))
  end
end 

class TestNumbersInMyArrayOnlyFunction< Minitest::Test
  def test_for_non_numeric_characters_in_my_array?
    assert_equal(nil, only_numbers_in_my_array?(["1","2","3","4","5","6","7","8","9","0"]))
    assert_equal(true, only_numbers_in_my_array?(["1","2","3","?","5","6","7","8","9","0"]))
    assert_equal(true, only_numbers_in_my_array?(["n","2","3","x","5","p","7","8","9","0"]))
  end
end

class TestIsbn10MathFunction< Minitest::Test
  def test_for_10_digit_math
    assert_equal(true, valid_10_digit_isbn?(["0","4","7","1","9","5","8","6","9","7"]))
    assert_equal(false, valid_10_digit_isbn?(["1","4","7","1","9","5","8","6","9","7"]))
    assert_equal(true, valid_10_digit_isbn?(["8","7","7","1","9","5","8","6","9","10"]))
  end                     
end
 
class TestIsbn13MathFunction< Minitest::Test
  def test_for_thirteen_character_math
    assert_equal(true, valid_13_digit_isbn?(["9","7","8","0","1","5","6","0","2","7","3","2","8"]))
    assert_equal(false, valid_13_digit_isbn?(["7","8","0","6","7","0","0","2","0","4","8","5"]))
    assert_equal(false, valid_13_digit_isbn?(["1","3","4","5","6","7","8","9","1","1","1","1"]))
    assert_equal(true, valid_13_digit_isbn?(["9","7","8","0","3","0","6","4","0","6","1","5","7"]))
    assert_equal(true, valid_13_digit_isbn?(["9","7","8","3","1","6","1","4","8","4","1","0","0"]))
      assert_equal(false, valid_13_digit_isbn?(["x","7","8","3","1","6","1","4","8","4","1","0","x"]))
  end 
end

class TestIsISBNvalid10Function< Minitest::Test
  def test_input_string_is_a_valid_isbn_for_10_degit
    assert_equal(false,valid_isbn?("0471958698"))
    assert_equal(true,valid_isbn?("0 4 7-1958697"))
    assert_equal(true,valid_isbn?("0471958697"))
    assert_equal(false,valid_isbn?("1471958697"))
    assert_equal(false,valid_isbn?("0312341613x"))
    assert_equal(true,valid_isbn?("87 71958 69X"))      
    assert_equal(true,valid_isbn?("0-8044-2957-X")) 
    assert_equal(true,valid_isbn?("0-9752298-0-X"))
  end
end

class TestIsISBNvalid13Function< Minitest::Test
  def test_for_valid_thirteen_digit_isbn
    assert_equal(true, valid_isbn?("9780156027328"))
    assert_equal(false, valid_isbn?("9780470009029"))
    assert_equal(false, valid_isbn?("1345678911112"))           
    assert_equal(true, valid_isbn?("9 78 0470-059-029"))
    assert_equal(true, valid_isbn?("978-0-13-149505-0"))
    assert_equal(true, valid_isbn?("978-3-16-148410-0"))
    assert_equal(true, valid_isbn?("978-0-306-40615-7"))
    assert_equal(false, valid_isbn?("9 78 0470%059-029"))
    assert_equal(true, valid_isbn?("877195869x"))   
  end 
end