class RockPaperScissorsGame

  def initialize(player_1_move, player_2_move)
    @player_1_move = player_1_move
    @player_2_move = player_2_move
  end

  def draw?
    @player_1_move == @player_2_move
  end

  def player_1_won?
    (@player_1_move == "Rock" && @player_2_move == "Scissors") ||
    (@player_1_move == "Paper" && @player_2_move == "Rock") ||
    (@player_1_move == "Scissors" && @player_2_move == "Paper")
  end

end
