class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initalize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
