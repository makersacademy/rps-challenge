class Weapon

  WEAPONS = ["rock", "paper", "scissors"]

  attr_accessor :weapon, :random

  def initialize(weapon = random)
    @weapon = weapon
  end

  def random
    WEAPONS.sample
  end

end
