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

  def correct_punctuation
    new_title = updated_book_array
    new_title[0] = new_title[0].capitalize

    new_title.join(" ")
  end
end
