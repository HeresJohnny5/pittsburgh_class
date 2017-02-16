require 'minitest/autorun'
require_relative 'random_pairs_example1.rb'

class TestRandomPairs < Minitest::Test
  def test_no_students_returns_empty_multidimensional_array
    assert_equal([[]], create_random_pairs([]))
  end

  def test_2_students_returns_single_pair
    array_of_pairs = create_random_pairs(["John", "Calab"])
    assert_equal(1, array_of_pairs.count)
  end

  def test_3_students_returns_single_pair
    array_of_pairs = create_random_pairs(["John", "Calab", "Dawn"])
    assert_equal(1, array_of_pairs.count)
  end

  def test_4_students_returns_two_pairs
    array_of_pairs = create_random_pairs(["John", "Calab", "Cheri", "Josh"])
    assert_equal(2, array_of_pairs.count)
  end

  def test_5_students_returns_two_pairs
    array_of_pairs = create_random_pairs(["John", "Calab", "Cheri", "Josh", "Dawn"])
    assert_equal(2, array_of_pairs.count)
  end

  def test_6_students_returns_three_pairs
    array_of_pairs = create_random_pairs(["John", "Calab", "Cheri", "Josh", "Dawn", "Marvin"])
    assert_equal(3, array_of_pairs.count)
  end

  def test_7_students_returns_correct_pairs
    array_of_pairs = create_random_pairs(["John", "Calab", "Cheri", "Josh", "Dawn", "Marvin", "Bob"])
    assert_equal(3, array_of_pairs.count)
  end

  def test_8_students_returns_correct_pairs
    array_of_pairs = create_random_pairs(["John", "Calab", "Cheri", "Josh", "Dawn", "Marvin", "Bob", "Jonathan"])
    assert_equal(4, array_of_pairs.count)
  end
end
