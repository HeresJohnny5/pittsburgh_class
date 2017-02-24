require_relative 'function.rb'
require 'minitest/autorun'

class TestCoinChangerKata < Minitest::Test
  def test_responds_to_currency_hash_with_currency_less_than_5
    assert_equal({ :penny => 1, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(1))
    assert_equal({ :penny => 2, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(2))
    assert_equal({ :penny => 3, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(3))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(4))
  end
end
