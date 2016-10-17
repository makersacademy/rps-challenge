class Player

  attr_reader :name, :weapon

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
    @weapon = weapon
  end

  def choose_weapon(weapon)
    @weapon = weapon.downcase.to_sym
  end

end
