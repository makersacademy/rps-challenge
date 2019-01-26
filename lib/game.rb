require_relative 'player'

class Game
  attr_reader :name
  DEFAULT_PLAYER = 'computer'

  def initialize(player1, player2=DEFAULT_PLAYER)
    @player1 = player1
    @player2 = player2
  end

  def random_rps
  end
end
