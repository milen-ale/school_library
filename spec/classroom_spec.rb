require_relative '../classroom'
# // create a mock of classroom
# test if it is an instance of classroom
# test if you can add students

describe Classroom do
  def create_classroom(label)
    Classroom.new(label)
  end

  it 'should be able to create classroom' do
    classroom = create_classroom('class-test')

    expect(classroom).to be_instance_of Classroom
  end
end
