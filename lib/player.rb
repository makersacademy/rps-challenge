class Player

  attr_reader :name, :weapon

  def initialize(player_name)
    @name = player_name
    @weapon = nil
  end

  def set_weapon(weapon)
    @weapon = weapon
  end



end
