require_relative 'function.rb'
require 'minitest/autorun'

class TestCoinChangerKata < Minitest::Test
  def test_responds_to_currency_hash_with_currency_less_than_5
    assert_equal({ :penny => 1, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(1))
    assert_equal({ :penny => 2, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(2))
    assert_equal({ :penny => 3, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(3))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(4))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_5_less_than_10
    assert_equal({ :penny => 0, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(5))
    assert_equal({ :penny => 1, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(6))
    assert_equal({ :penny => 2, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(7))
    assert_equal({ :penny => 3, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(8))
    assert_equal({ :penny => 4, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(9))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_5_less_than_25
    assert_equal({ :penny => 0, :nickel => 0, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(10))
    assert_equal({ :penny => 1, :nickel => 0, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(11))
    assert_equal({ :penny => 2, :nickel => 0, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(12))
    assert_equal({ :penny => 3, :nickel => 0, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(13))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(14))
    assert_equal({ :penny => 0, :nickel => 1, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(15))
    assert_equal({ :penny => 3, :nickel => 1, :dime => 1, :quarter => 0, :dollar => 0 }, coin_changer(18))
    assert_equal({ :penny => 0, :nickel => 0, :dime => 2, :quarter => 0, :dollar => 0 }, coin_changer(20))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 2, :quarter => 0, :dollar => 0 }, coin_changer(24))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_5_less_than_25
    assert_equal({ :penny => 0, :nickel => 0, :dime => 0, :quarter => 1, :dollar => 0 }, coin_changer(25))
    assert_equal({ :penny => 1, :nickel => 1, :dime => 0, :quarter => 1, :dollar => 0 }, coin_changer(31))
    assert_equal({ :penny => 2, :nickel => 1, :dime => 1, :quarter => 2, :dollar => 0 }, coin_changer(67))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 0, :quarter => 3, :dollar => 0 }, coin_changer(79))
    assert_equal({ :penny => 3, :nickel => 1, :dime => 0, :quarter => 3, :dollar => 0 }, coin_changer(83))
    assert_equal({ :penny => 1, :nickel => 0, :dime => 2, :quarter => 3, :dollar => 0 }, coin_changer(96))
  end
end
