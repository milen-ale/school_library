# frozen_string_literal: true

require_relative 'person'

class Student < Person
  def initialize(age, _name, _parent_permission, classroom = nil)
    super(age, name: 'unknown', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
