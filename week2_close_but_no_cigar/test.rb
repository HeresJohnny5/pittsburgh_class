require 'minitest/autorun'
require_relative 'function.rb'

class CloseButNoCigar < Minitest::Test
  def test_1234_compared_to_1235_returns_true
    num1 = "1234"
    num2 = "1235"
    assert_equal(true, off_by_one?(num1, num2))
  end
end