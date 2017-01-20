require_relative "random_pairs_example3.rb"
require "minitest/autorun"

class RandomPairs < Minitest::Test

	def test_two_names_returns_count_of_one
		students = ["John", "Caleb"]
		random_pairing = random_pairing(students)
		assert_equal(1, random_pairing.count)
	end

	def test_three_names_returns_count_of_one
		students = ["John", "Caleb", "Josh"]
		random_pairing = random_pairing(students)
		assert_equal(1, random_pairing.count)
	end

	def test_four_names_returns_count_of_two
		students = ["John", "Caleb", "Josh", "Dawn"]
		random_pairing = random_pairing(students)
		assert_equal(2, random_pairing.count)
	end

	def test_five_names_returns_count_of_two
		students = ["John", "Caleb", "Josh", "Dawn", "Cheri"]
		random_pairing = random_pairing(students)
		assert_equal(2, random_pairing.count)
	end

	def test_six_names_returns_count_of_three
		students = ["John", "Caleb", "Josh", "Dawn", "Cheri", "Jonathan"]
		random_pairing = random_pairing(students)
		assert_equal(3, random_pairing.count)
	end

	def test_seven_names_returns_count_of_three
		students = ["John", "Caleb", "Josh", "Dawn", "Cheri", "Jonathan", "Amanda"]
		random_pairing = random_pairing(students)
		assert_equal(3, random_pairing.count)
	end

end