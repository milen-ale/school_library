require_relative 'person'

class Teacher < Person
  def initialize(age, _name = 'unknown', _parent_permission: true , specialization)
    super(age, _name, parent_permission: _parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
