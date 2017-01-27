require 'minitest/autorun'
require_relative 'function.rb'

class CloseButNoCigar < Minitest::Test
  def test_1234_compared_to_1235_returns_true
    num1 = "1234"
    num2 = "1235"
    assert_equal(true, off_by_one?(num1, num2))
  end

  def test_2435_compared_to_2435_returns_false
    num1 = "2435"
    num2 = "2435"
    assert_equal(false, off_by_one?(num1, num2))
  end

  def test_1827_compared_to_1836_returns_false
    num1 = "2435"
    num2 = "2435"
    assert_equal(false, off_by_one?(num1, num2))
  end

  def test_8725_compared_to_8825_returns_true
    num1 = "8725"
    num2 = "8825"
    assert_equal(true, off_by_one?(num1, num2))
  end

  def test_6253_compared_to_6715_returns_false
    num1 = "6253"
    num2 = "6715"
    assert_equal(false, off_by_one?(num1, num2))
  end

  def test_4526_compared_to_4422_returns_false
    num1 = "4526"
    num2 = "4422"
    assert_equal(false, off_by_one?(num1, num2))
  end
end