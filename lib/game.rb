class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def choose_weapon
    @player.pick_weapon
  end

end
