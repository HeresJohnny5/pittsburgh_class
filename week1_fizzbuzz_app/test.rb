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

  def test_5_returns_Minds
    algorithm = Algorithm.new
    assert_equal("Minds", algorithm.fizz_buzz(5)) 
  end

  def test_10_returns_Minds
    algorithm = Algorithm.new
    assert_equal("Minds", algorithm.fizz_buzz(10)) 
  end

  def test_505_returns_Minds
    algorithm = Algorithm.new
    assert_equal("Minds", algorithm.fizz_buzz(505)) 
  end

  def test_15_returns_Mined_Minds
    algorithm = Algorithm.new
    assert_equal("Minds", algorithm.fizz_buzz(5)) 
  end

  def test_30_returns_Mined_Minds
    algorithm = Algorithm.new
    assert_equal("Minds", algorithm.fizz_buzz(10)) 
  end

  def test_360_returns_Mined_Minds
    algorithm = Algorithm.new
    assert_equal("Minds", algorithm.fizz_buzz(505)) 
  end

  def test_two_returns_two
    algorithm = Algorithm.new
    assert_equal("2", algorithm.fizz_buzz(2))
  end
end