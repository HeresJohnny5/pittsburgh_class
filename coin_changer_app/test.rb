require_relative 'function.rb'
require 'minitest/autorun'

class TestCoinChangerKata < Minitest::Test
  def test_responds_to_currency_hash_with_currency_less_than_5
    assert_equal({ :penny => 1, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(1))
    assert_equal({ :penny => 2, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(2))
    assert_equal({ :penny => 3, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(3))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(4))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_0_less_than_10
    assert_equal({ :penny => 0, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(5))
    assert_equal({ :penny => 1, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(6))
    assert_equal({ :penny => 2, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(7))
    assert_equal({ :penny => 3, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(8))
    assert_equal({ :penny => 4, :nickel => 1, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(9))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_0_less_than_25
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

  def test_responds_to_currency_hash_with_currency_greater_than_0_less_than_100
    assert_equal({ :penny => 0, :nickel => 0, :dime => 0, :quarter => 1, :dollar => 0 }, coin_changer(25))
    assert_equal({ :penny => 1, :nickel => 1, :dime => 0, :quarter => 1, :dollar => 0 }, coin_changer(31))
    assert_equal({ :penny => 2, :nickel => 1, :dime => 1, :quarter => 2, :dollar => 0 }, coin_changer(67))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 0, :quarter => 3, :dollar => 0 }, coin_changer(79))
    assert_equal({ :penny => 3, :nickel => 1, :dime => 0, :quarter => 3, :dollar => 0 }, coin_changer(83))
    assert_equal({ :penny => 1, :nickel => 0, :dime => 2, :quarter => 3, :dollar => 0 }, coin_changer(96))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_0_less_than_500
    assert_equal({ :penny => 0, :nickel => 0, :dime => 0, :quarter => 1, :dollar => 1 }, coin_changer(125))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 1, :quarter => 1, :dollar => 2 }, coin_changer(239))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 1, :quarter => 0, :dollar => 3 }, coin_changer(314))
    assert_equal({ :penny => 4, :nickel => 0, :dime => 2, :quarter => 0, :dollar => 4 }, coin_changer(424))
    assert_equal({ :penny => 3, :nickel => 0, :dime => 2, :quarter => 3, :dollar => 4 }, coin_changer(498))
  end

  def test_responds_to_currency_hash_with_currency_greater_than_0_less_than_1000
    assert_equal({ :penny => 0, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 5 }, coin_changer(500))
    assert_equal({ :penny => 1, :nickel => 0, :dime => 0, :quarter => 1, :dollar => 6 }, coin_changer(626))
    assert_equal({ :penny => 2, :nickel => 0, :dime => 1, :quarter => 1, :dollar => 7 }, coin_changer(737))
    assert_equal({ :penny => 4, :nickel => 1, :dime => 0, :quarter => 1, :dollar => 8 }, coin_changer(834))
    assert_equal({ :penny => 0, :nickel => 0, :dime => 2, :quarter => 3, :dollar => 9 }, coin_changer(995))
  end
end
