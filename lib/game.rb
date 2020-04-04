require_relative 'player'
require_relative 'computer'

class Game

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def wins?
    RULES[@player.move] == @computer.move
  end

end
