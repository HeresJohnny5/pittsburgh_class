class BookTitleKata
  def initialize(book_title)
    @book_title = book_title
  end

  def updated_book_array
    universal_case_title = @book_title.downcase.split(" ")

    new_title = []

    universal_case_title.each do |word|
      if word == 'a' || word == 'and' || word == 'the' || word == 'of'
        new_title << word
      else
        new_title << word.capitalize
      end
    end

      new_title
  end

end
