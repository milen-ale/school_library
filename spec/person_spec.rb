require_relative '../person.rb'

describe Person do
before :each do
      @person = Person.new 23, 'John', true
end
it 'should display persons name' do
expect(@person.name).to eq 'John'
end                                                  
  it 'should display persons age' do
expect(@person.age).to eq 23
 end

 it 'should display persons permission' do
 expect(@person.parent_permission).to eq true
                                                     end
end