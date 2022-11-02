require_relative 'person'
# rubocop:disable all
class Student < Person
  def initialize(age, _name = 'unknown',  _parent_permission: true, classroom = nil)
    super(age, _name, parent_permission: _parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
