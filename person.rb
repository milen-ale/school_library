require_relative './nameable'
class Person < Nameable
  attr_accessor :name, :age, :id, :parent_permission, :rentals

  def initialize(age, name, parent_permission)
    # Instance vars: @id, @name, and @age.
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    # book.person = self
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
