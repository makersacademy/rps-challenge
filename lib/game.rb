class Game
  attr_reader :player, :winner

  @@moves = [:scissors, :paper, :rock]

  def initialize(player)
    @player = player
    @winner = nil
  end

  def judge(move1, move2)
    @winner = @player.name if @@moves[@@moves.index(move1)] == @@moves[@@moves.index(move2) - 1]
    @winner = "Robot" if @@moves[@@moves.index(move2)] == @@moves[@@moves.index(move1) - 1]
  end
end
