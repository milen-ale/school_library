require_relative 'person'

class Teacher < Person
  attr_reader :specialization
  attr_accessor :id

  def initialize(age, specialization, name = 'unknown', id = Random.rand(1...1000), parent_permission: true)
    super(age, name, parent_permission)
    @id = id
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
