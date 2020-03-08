class Game

  def initialize(player, computer)
    @player_weapon = player.weapon
    @computer_weapon = computer.weapon
  end

  def result
    return :draw if @player_weapon == @computer_weapon
  end

end
