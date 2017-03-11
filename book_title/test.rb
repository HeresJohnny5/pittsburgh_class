require 'minitest/autorun'
require_relative 'function.rb'

class TestBookTitle < Minitest::Test
  def test_responds_to_class_returns_new_array
    book_title = BookTitleKata.new("lORd OF The riNGS")
    assert_equal(["Lord", "of", "the", "Rings"], book_title.updated_book_array)
  end
end
