class Weapon
WEAPONS = [:rock, :scissor, :paper]

  attr_reader :weapon

  def initialize(weapon = WEAPONS.sample)
    @weapon = weapon
  end


end

