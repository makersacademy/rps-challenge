require 'singleton'

class GameLogic
  include Singleton
  def initialize
    @move = ["Rock", "Paper", "Scissors"]
  end

  def winner(p1,p2)
    p1_id = @move.index(p1)
    p2_id = @move.index(p2)
    return "It's a draw" if p1_id == p2_id
    return (p1_id == (p2_id + 1) % 3) ? 'Player 1 wins' : 'Player 2 wins'
  end

end
