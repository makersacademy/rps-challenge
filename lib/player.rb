class Player
  attr_reader :name, :weapon
  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]

  def initialize(name)
    @name = name
  end

  def choice(weapon = WEAPONS.sample)
    @weapon = weapon
  end
end
