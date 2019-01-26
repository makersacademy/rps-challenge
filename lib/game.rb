require_relative 'player'

class Game
  attr_reader :name, :result, :player1, :player2
  DEFAULT_OPPONENT = 'computer'

  def initialize(player1, player2=DEFAULT_OPPONENT)
    @player1 = player1
    @player2 = player2
    @result
  end

  def random_rps
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

end
