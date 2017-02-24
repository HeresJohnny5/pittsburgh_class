require_relative 'function.rb'
require 'minitest/autorun'

class TestCoinChangerKata < Minitest::Test
  def test_responds_to_currency_hash_adding_one_to_key_penny
    assert_equal({ :penny => 1, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }, coin_changer(1))
  end
end
