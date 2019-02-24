class Game

  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def winner
    win = "You win at this skillful game of chance"
    lose = "HAL wins. Another time, McCloud"
    draw = "This one's a draw"
    @player_move == "Rock" && @ai_move == "Scissors" ? win : @player_move == "Rock" && @ai_move == "Paper" ? lose : draw
    @player_move == "Paper" && @ai_move == "Rock" ? win : @player_move == "Paper" && @ai_move == "Scissors" ? lose : draw
    @player_move == "Scissors" && @ai_move == "Paper" ? win : @player_move == "Scissors" && @ai_move == "Rock" ? lose : draw
  end

end
