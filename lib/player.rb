class Player
  attr_reader :name, :weapon
  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
  def initialize(name)
    @name = name
    @weapon = WEAPONS.sample
  end

  def weapon_choice(weapon)
    @weapon = weapon
  end
end
