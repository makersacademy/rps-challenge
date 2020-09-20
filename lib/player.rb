class Player

  attr_reader :name, :weapon
  
  def initialize(player_name)
    @name = player_name
  end

  def select(weapon)
    @weapon = weapon.to_sym
  end

end