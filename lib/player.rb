require_relative 'computer'

class Player

  attr_reader :name, :weapon

  def initialize(name = "Computer")
    @name = name
  end

  def choose(weapon = Computer.new.random_choice)
    @weapon = weapon
  end

end
