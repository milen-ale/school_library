require_relative 'person'

class Student < Person
  attr_reader :id, :classroom # student belongs-to classroom

  def initialize(age, name, parent_permission, classroom, id = Random.rand(1...1000))
    super(age, name, parent_permission)
    @id = id
    @classroom = classroom
  end

  def play_hooky
    puts '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
