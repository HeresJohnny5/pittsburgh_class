require 'minitest/autorun'
require_relative 'function.rb'

class TestMinedMindsKata < Minitest::Test
	def test_array_returns_100_count
		up_to_number = 100
		assert_equal(100, numbered_array(up_to_number).count)
	end
	
	def test_15_returns_Mined_Minds
		up_to_number = 100
		assert_equal("Mined Minds", numbered_array(up_to_number)[14])
	end
	
	def test_30_returns_Mined_Minds
		up_to_number = 100
		assert_equal("Mined Minds", numbered_array(up_to_number)[29])
	end
	
	def test_3_returns_Mined
		up_to_number = 100
		assert_equal("Mined", numbered_array(up_to_number)[2])
	end
	
	def test_6_returns_Mined
		up_to_number = 100
		assert_equal("Mined", numbered_array(up_to_number)[5])
	end
	
	def test_99_returns_Mined
		up_to_number = 100
		assert_equal("Mined", numbered_array(up_to_number)[98])
	end
end