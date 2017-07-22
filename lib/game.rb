class Game

  def initialize(player)
    @player = player
  end

  def player_name
    @player.name
  end

  def set_weapon(weapon)
    @player.set_weapon(weapon)
  end

  def weapon
    @player.weapon
  end

  def computer_weapon(arg = Computer)
    arg.weapon
  end

end
