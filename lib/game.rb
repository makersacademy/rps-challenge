class Game
  attr_reader :player1, :player2, :winner

  @@moves = [:scissors, :paper, :rock]

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  def judge(move1, move2)
    @winner = @player1 if @@moves[@@moves.index(move1)] == @@moves[@@moves.index(move2) - 1]
    @winner = @player2 if @@moves[@@moves.index(move2)] == @@moves[@@moves.index(move1) - 1]
  end
end
