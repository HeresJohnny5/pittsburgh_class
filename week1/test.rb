require_relative 'function.rb'
require 'minitest/autorun'

class FizzBuzz < Minitest::Test
  def test_3_returns_Mined
    algorithm = Algorithm.new
    assert_equal("Mined", algorithm.fizz_buzz(3))
  end

  def test_6_returns_Mined
    algorithm = Algorithm.new
    assert_equal("Mined", algorithm.fizz_buzz(6))
  end

  def test_129_returns_Mined
    algorithm = Algorithm.new
    assert_equal("Mined", algorithm.fizz_buzz(129))
  end
end