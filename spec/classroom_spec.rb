require_relative '../classroom'
require_relative '../student'
# // create a mock of classroom
# test if it is an instance of classroom
# test if you can add students

describe Classroom do
  # allow(student1).to receive(:classroom)
  before :each do
    @classroom = Classroom.new 'Grade12'
  end

  it 'should be able an instance of Classroom' do
    expect(@classroom).to be_instance_of Classroom
  end

  it 'should do show the grade12 label' do
    expect(@classroom.label).to eq 'Grade12'
  end

  # it 'should be able to add student to classroom' do
  #   # arrange
  #   student1 = instance_double('student')
  #   allow(student1).to receive(:name) { 'John Smith' } # double
  #   allow(student1).to receive(:classroom).and_return('hlo')
  #   classroom = create_classroom('class-test')

  #   # # #act
  #   classroom.add_student(student1)

  #   # #assert
  #   # # expect(classroom.students.length).to eq 0
  #   # expect(classroom).to be_instance_of Classroom
  # end
end
