require_relative 'function.rb'
require 'minitest/autorun'

class FizzBuzz < Minitest::Test
  def test_returns_number
    num = "3"
    assert_equal("3", fizz_buzz(num))
  end
end