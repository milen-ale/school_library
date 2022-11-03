class Person < Nameable
  attr_reader :name, :age
  attr_accessor :id

  def initialize(age, name = 'unknown', parent_permission: true)
    # Instance vars: @id, @name, and @age.
    super(name)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
