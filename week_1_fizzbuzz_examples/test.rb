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
	
	def test_15_returns_Mined_Minds
		up_to_number = 100
		assert_equal("Mined Minds", numbered_array(up_to_number)[29])
	end
end