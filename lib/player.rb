class Player

attr_reader :name
WEAPONS = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    fail 'not a valid weapon' unless WEAPONS.include? weapon
    @weapon = weapon
  end

end
