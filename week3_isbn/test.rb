require 'minitest/autorun'
require_relative 'function.rb'

class TestValidIsbnLength < Minitest::Test
  def test_empty_string_returns_false
    string_num = ""
    assert_equal(false, valid_isbn_length?(string_num))
  end

  def test_10_digit_string_returns_true()
    string_num = "0471958697"
    assert_equal(true, valid_isbn_length?(string_num))
  end

  def test_5_digit_string_returns_false()
    string_num = "04719"
    assert_equal(false, valid_isbn_length?(string_num))
  end

  def test_13_digit_string_returns_true()
    string_num = "9780470059029"
    assert_equal(true, valid_isbn_length?(string_num))
  end
end

class TestDisallowedCharactersFunction < Minitest::Test
  def test_to_remove_extra_characters_1234567890
    string_num = "12 3-4567-89 0"
    assert_equal("1234567890", remove_disallowed_characters_from_isbn(string_num))
  end

  def test_to_remove_extra_characters_5434567890
    string_num = "5434567890\n"
    assert_equal("5434567890", remove_disallowed_characters_from_isbn(string_num))
  end

  def test_to_remove_extra_characters_1235637890
    string_num = "123 563-7890\n"
    assert_equal("1235637890", remove_disallowed_characters_from_isbn(string_num))
  end

  def test_to_remove_extra_characters_5624567890
    string_num = "562456\"7890"
    assert_equal("5624567890", remove_disallowed_characters_from_isbn(string_num))
  end
end

class TestConvertsStringToArray < Minitest::Test
  def test_string_returns_empty_array
    string = ""
    assert_equal([], string_to_array(string))
  end

  def test_12345_string_returns_array_with_12345
    string = "12345"
    assert_equal(["1", "2", "3", "4", "5"], string_to_array(string))
  end

  def test_4567898765325_string_returns_array_with_4567898765325
    string = "4567898765325"
    assert_equal(["4", "5", "6", "7", "8","9","8","7","6","5","3","2","5"], string_to_array(string))
  end
end