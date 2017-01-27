require 'minitest/autorun.rb'
require_relative 'function.rb'

class TestAddition < Minitest::Test
  def test_1_plus_0_equals_1
    assert_equal(1, basic_addition(1, 0))
  end

  def test_55_plus_310_equals_365
    assert_equal(365, basic_addition(55, 310))
  end

  def test_10_plus_15_equals_25
    assert_equal(25, basic_addition(10, 15))
  end
end

class TestSubtraction < Minitest::Test
  def test_1_minus_0_equals_1
    assert_equal(1, basic_subtraction(1, 0))
  end

  def test_500_minus_75_equals_425
    assert_equal(425, basic_subtraction(500, 75))
  end

  def test_208_minus_5_equals_203
    assert_equal(203, basic_subtraction(208, 5))
  end
end