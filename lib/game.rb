class Game

  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def winner
    win = "You win at this skillful game of chance"
    lose = "HAL wins. Another time, McCloud"
    draw = "This one's a draw"
    case @player_move
      when "Rock"
        @ai_move == "Scissors" ? win : @ai_move == "Paper" ? lose : draw
      when "Paper"
        @ai_move == "Rock" ? win : @ai_move == "Scissors" ? lose : draw
      when "Scissors"
        @ai_move == "Paper" ? win : @ai_move == "Rock" ? lose : draw
    end
  end

end
