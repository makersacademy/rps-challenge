require './lib/player'
require './lib/computer'
class Game

  MOVES = [:rock, :paper, :scissors]

  attr_reader :player1

  def initialize(player1)
    @player1 = player1
  end
end
