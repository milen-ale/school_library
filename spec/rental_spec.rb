require_relative '../student'
require_relative '../rental'

describe Rental do
  before :each do
    @person = Student.new nil, nil, 19, 'Mandela', parent_permission: true
    @book = Book.new 'Hello', 'World', nil
    @rental = Rental.new '2022/06/22', @person, @book
  end

  it 'should display rented book title' do
    @person.rentals.each do |rental|
      expect(rental.person.title).to eq 'Hello'
    end
  end
  it 'should display rented date' do
    @person.rentals.each do |rental|
      expect(rental.date).to eq '2022/06/22'
    end
  end
end
