class Game

  attr_reader :player, :player_weapon

  def initialize(player)
    @player = player
  end

  def choose_weapon(weapon)
    @player_weapon = weapon
  end

end
