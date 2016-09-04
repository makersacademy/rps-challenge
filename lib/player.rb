class Player

attr_reader :name, :weapon

WEAPONS = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    fail 'not a valid weapon' unless WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end
end
