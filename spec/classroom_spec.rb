require_relative '../classroom'
require_relative '../student'
# // create a mock of classroom
# test if it is an instance of classroom
# test if you can add students

describe Classroom do
  # allow(student1).to receive(:classroom) 
  def create_classroom(label)
    Classroom.new(label)
  end

  it 'should be able to create classroom' do
    classroom = create_classroom('class-test')
    expect(classroom).to be_instance_of Classroom
  end

  it 'should be able to add student to classroom' do
    #arrange
    student1 = instance_double('student')
    allow(student1).to receive(:name) {'John Smith'} # double
    allow(student1).to receive(:classroom).and_return("hlo")
    classroom = create_classroom('class-test')

    # # #act
    classroom.add_student(student1)

    # #assert
    # # expect(classroom.students.length).to eq 0
    # expect(classroom).to be_instance_of Classroom

  end
end
