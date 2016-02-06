class Player

  attr_reader :name, :weapon

  def initialize(name, *weapon)
    @name = name
    @weapon = weapon
  end

  def choose(chosen_one)
    @weapon = chosen_one
  end


end
