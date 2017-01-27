require 'minitest/autorun'
require_relative 'function.rb'

class TestWinningNumber < Minitest::Test
  def test_ticket_5423_returns_true
    my_ticket = "5423"
    winning_ticket = ["5423"]
    assert_equal(true, winning_number?(my_ticket, winning_ticket))
  end

  def test_ticket_4555_returns_true
    my_ticket = "4555"
    winning_ticket = ["4555"]
    assert_equal(true, winning_number?(my_ticket, winning_ticket))
  end

  def test_ticket_2198_returns_false
    my_ticket = "2198"
    winning_ticket = ["8927"]
    assert_equal(false, winning_number?(my_ticket, winning_ticket))
  end

  def test_ticket_1298_returns_false
    my_ticket = "1298"
    winning_ticket = ["5241"]
    assert_equal(false, winning_number?(my_ticket, winning_ticket))
  end
end