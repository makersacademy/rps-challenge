class Player

  attr_reader :name, :weapon

  def initialize(player_1_name, weapon = nil)
    @name = player_1_name
    @weapon = weapon
  end

  def set_weapon(weapon)
    @weapon = weapon
  end

end
