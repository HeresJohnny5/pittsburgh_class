require_relative 'function.rb'
require 'minitest/autorun'

class TestCoinChangerKata < Minitest::Test
  def test_responds_to_currency_hash_with_currency_less_than_5
    assert_equal({ :penny => 1, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(1))
    assert_equal({ :penny => 2, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(2))
    assert_equal({ :penny => 3, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(3))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(4))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_5_less_than_or_equal_to_10
    assert_equal({ :penny => 0, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(5))
    assert_equal({ :penny => 1, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(6))
    assert_equal({ :penny => 2, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(7))
    assert_equal({ :penny => 3, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(8))
    assert_equal({ :penny => 4, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(9))
    assert_equal({ :penny => 0, :nickel => 2, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(10))
  end
end
