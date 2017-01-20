require 'minitest/autorun'
require_relative 'function.rb'

class TestRandomPairing < Minitest::Test
  def test_empty_multi_d_array
    array = []
    assert_equal([], random_pair(array))
  end

  def test_array_with_4_names_returns_2_arrays
    array = ["John", "Josh", "Caleb", "Marv"]
    assert_equal(2, random_pair(array).count)
  end
end