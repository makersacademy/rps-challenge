class Weapon

  WEAPONS = [:rock, :paper, :scissors]

  attr_accessor :weapon, :random

  def initialize(weapon)
    @weapon = weapon
  end

  def random
    WEAPONS.sample
  end

end
