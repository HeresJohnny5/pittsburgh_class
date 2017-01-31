require 'minitest/autorun'
require_relative 'function.rb'

class TestValidIsbnLength < Minitest::Test
  def test_empty_string_returns_false
    num = ""
    assert_equal(false, valid_isbn_length?(""))
  end

  def test_10_digit_string_returns_true()
    num = "0471958697"
    assert_equal(true, valid_isbn_length?("0471958697"))
  end

  def test_5_digit_string_returns_false()
    num = "04719"
    assert_equal(false, valid_isbn_length?("04719"))
  end

  def test_13_digit_string_returns_true()
    num = "9780470059029"
    assert_equal(true, valid_isbn_length?("9780470059029"))
  end
end