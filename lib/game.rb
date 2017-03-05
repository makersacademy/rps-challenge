require_relative 'computer'
require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :player, :computer, :weapons

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def play(player_weapon)
    @player.check_weapon(player_weapon)
    @computer.select_weapon
  end

end
