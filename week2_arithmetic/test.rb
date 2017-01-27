require 'minitest/autorun.rb'
require_relative 'function.rb'

class TestAddition < Minitest::Test
  def test_1_plus_0_equals_1
    assert_equal(1, basic_addition(1, 0))
  end
end