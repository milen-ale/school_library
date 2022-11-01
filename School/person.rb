class Person
  attr_reader :id, :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def name!(name)
    @name = name
  end

  def age!(age)
    @age = age
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  private :of_age?
end
