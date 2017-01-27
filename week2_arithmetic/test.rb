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

class TestMultiplication < Minitest::Test
  def test_1_times_5_times_310_equals_1550
    assert_equal(1550, basic_multiplication(1, 5, 310))
  end

  def test_3_times_42_times_8_equals_1008
    assert_equal(1008, basic_multiplication(3, 42, 8))
  end

  def test_12_times_5_times_211_equals_12660
    assert_equal(12660, basic_multiplication(12, 5, 211))
  end
end

class TestDivision < Minitest::Test
  def test_15_divided_by_3_equals_5
    assert_equal(5, basic_division(15, 3))
  end

  def test_8060_divided_by_26_equals_310
    assert_equal(310, basic_division(8060, 26))
  end

  def test_300_divided_by_5_equals_60
    assert_equal(60, basic_division(300, 5))
  end
end