class Player

  attr_reader :weapon_choice, :name

  def initialize(name)
    @weapon_choice = nil
    @name = name
  end

  def choose_weapon(weapon)
    @weapon_choice = weapon
  end

end
