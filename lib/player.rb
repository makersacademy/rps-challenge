class Player
  attr_reader :name, :weapon_chosen

  def initialize(name)
    @name = name
    @weapon
  end

  def selects_weapon(weapon)
    @weapon_chosen = weapon
  end
end
