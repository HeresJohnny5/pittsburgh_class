require_relative "random_pairs_example2.rb"
require "minitest/autorun"

class TestRandomPairing < Minitest::Test
  def test_array_of_nothing_returns_array
    array = []
    assert_equal([], random_pairing(array))
  end

  def test_array_with_2_names_returns_1_array
    array = random_pairing(["Josh", "Dawn"])
    assert_equal(1, array.count)
  end

  def test_array_with_3_names_returns_1_array
    array = random_pairing(["Josh", "Dawn", "Cheri"])
    assert_equal(1, array.count)
  end

  def test_array_with_5_names_returns_2_arrays
    array = random_pairing(["Josh", "John", "Dawn", "Cheri", "Caleb"])
    assert_equal(2, array.count)
  end

  def test_array_with_6_names_returns_3_arrays
    array = random_pairing(["Josh", "John", "Dawn", "Cheri", "Caleb", "Marv"])
    assert_equal(3, array.count)
  end

  def test_array_with_7_names_returns_3_arrays
    array = random_pairing(["Josh", "John", "Dawn", "Cheri", "Caleb", "Marv", "Amanda"])
    assert_equal(3, array.count)
  end

  def test_array_with_8_names_returns_4_arrays
    array = random_pairing(["Josh", "John", "Dawn", "Cheri", "Caleb", "Marv", "Amanda", "Jonathan"])
    assert_equal(4, array.count)
  end

  def test_array_with_9_names_returns_4_arrays
    array = random_pairing(["Josh", "John", "Dawn", "Cheri", "Caleb", "Marv", "Amanda", "Jonathan", "Joe"])
    assert_equal(4, array.count)
  end

  def test_array_with_10_names_returns_4_arrays
    array = random_pairing(["Josh", "John", "Dawn", "Cheri", "Caleb", "Marv", "Amanda", "Jonathan", "Joe", "Heather"])
    assert_equal(5, array.count)
  end

end
