class Player

  MOVES = {:rock => "rock",
           :paper => "paper",
           :scissors => "scissors"}

  attr_accessor :moves, :won
  def initialize

    @won = 0

  end

  def play move
    @moves = MOVES.key(move)
  end
end

