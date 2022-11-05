class Rental
  attr_accessor :date, :book, :person

  # attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rental << self
    @person = person
    person.rentals << self
  end
end