

class Player

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon_of_choice_is(weapon)
    @weapon = weapon.to_sym
  end

end
