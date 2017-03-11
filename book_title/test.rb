require 'minitest/autorun'
require_relative 'function.rb'

class TestBookTitle < Minitest::Test
  def test_responds_to_class_returns_new_array_Lord_of_the_Rings
    book_title = BookTitleKata.new("lORd OF The riNGS")
    assert_equal(["Lord", "of", "the", "Rings"], book_title.updated_book_array)
  end

  def test_responds_to_class_returns_new_array_the_Blair_Witch_Project
    book_title = BookTitleKata.new("THE BLAIR WITCH PROJECT")
    assert_equal(["the", "Blair", "Witch", "Project"], book_title.updated_book_array)
  end

  def test_responds_to_class_returns_new_array_the_Beautiful_and_the_Damned
    book_title = BookTitleKata.new("the bEaUtiful AnD The daMnEd")
    assert_equal(["the", "Beautiful", "and", "the", "Damned"], book_title.updated_book_array)
  end
end
