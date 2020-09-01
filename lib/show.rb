class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_pay = []
    @characters.each do |character|
      total_pay << character.salary
    end
  total_pay.sum
  end

  def highest_paid_actor
    @characters.max_by do |character|
      character.salary
    end
  end
end
