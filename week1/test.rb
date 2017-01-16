require_relative 'function.rb'
require 'minitest/autorun'

class FizzBuzz < Minitest::Test
  def test_returns_number
    algorithm = Algorithm.new
    assert_equal(3, algorithm.fizz_buzz(3))
  end
end