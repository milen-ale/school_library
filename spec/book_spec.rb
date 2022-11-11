require './book'
describe Book do
  before :each do
   @book = Book.new('Game of Thrones', 'George Martin')
  end
  context 'When testing the Book class' do
    it 'should print the book title' do
      expect(@book.title).to eq 'Game of Thrones'
    end
  end
  it 'should print the book author' do
    expect(@book.author).to eq 'George Martin'
  end
end

describe Book do
  before :each do
    @book = Book.new 'money hiest', 'paul mark'
  end
  it 'should print the book title' do
    expect(@book.title).to eq 'money hiest'
  end
  it 'should print the book author' do
    expect(@book.author).to eq 'paul mark'
  end
end


