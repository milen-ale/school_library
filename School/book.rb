class Book
  attr_accessor :title, :author
  attr_reader rental

  def initalize(title, author)
    @title = title
    @author = author
    @rental = rental[]
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end
end
