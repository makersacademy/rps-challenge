require_relative 'player'

class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def choose_weapon(weapon)
    @player.pick_weapon(weapon)
  end

end
