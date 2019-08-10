class Game

  attr_reader :player1, :player2

  WINNING_TABLE = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2    
  end

  def winner
    return "Draw!" if draw?
    WINNING_TABLE[player1.move] == player2.move ? player1 : player2 
  end

  def draw?
    player1.move == player2.move
  end

end