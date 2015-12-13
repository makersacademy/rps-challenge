class Player

  attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    @weapon_choice = weapon
  end

end
