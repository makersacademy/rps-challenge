require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :result

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
    beats? ? (@result = :win ) : (@result = :lose )
  end

  def beats?
    RULES[@player.move] == @computer.move
  end

end
