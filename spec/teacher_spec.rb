require_relative '../teacher'
require_relative '../book'

describe Teacher do
  before :each do
    @teacher1 = Teacher.new 23, 'Chemistry', 'Sam', nil, parent_permission: true
    @teacher2 = Teacher.new 23, 'Chemistry', 'Dan', nil, parent_permission: true
    @book = Book.new 'Hello', 'World', nil
    # @rental = Rental.new '2022/06/22', @person, @book
  end

  it 'should display teacher name' do
    expect(@teacher1.name).to eq 'Sam'
    expect(@teacher2.name).to eq 'Dan'
  end

  it 'should display teacher parent permission' do
    expect(@teacher1.parent_permission).not_to eq false
    expect(@teacher2.parent_permission).to eq true
  end

  #   it 'should displays book rented by Teacher' do
  #     @teacher1.add_rental @rental
  #     @teacher1.rentals.each do |rental|
  #       expect(rental.person.title).to eq 'Hello'
  #     end
  #   end
end
