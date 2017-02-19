require 'minitest/autorun'
require_relative 'functions.rb'

class TestMathOperations < Minitest::Test
  def test_3_numbers_returns_sum
    assert_equal(6, sum(1, 2, 3))
    assert_equal(25, sum(18, 2, 5))
    assert_equal(32, sum(25, 5, 2))
    assert_equal(101, sum(90, 10, 1))
    assert_equal(15, sum(4, 8, 3))
  end

  def test_conditional_returns_correct_statement
    assert_equal("Your age is greater than the sum of your 3 favorite numbers.", difference(38, 10))
    assert_equal("Your age is greater than the sum of your 3 favorite numbers.", difference(15, 8))
    assert_equal("Your age is greater than the sum of your 3 favorite numbers.", difference(66, 45))
    assert_equal("Your age is lesser than the sum of your 3 favorite numbers.", difference(25, 76))
    assert_equal("Your age is lesser than the sum of your 3 favorite numbers.", difference(34, 40))
    assert_equal("Your age is lesser than the sum of your 3 favorite numbers.", difference(55, 56))
  end
end
