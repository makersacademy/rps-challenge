class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  def winner
    if (@player1.turn == "rock" && @player2.turn == "scissors") || (@player1.turn == "scissors" && @player2.turn == "paper") || (@player1.turn == "paper" && @player2.turn == "rock")
      @player1
    elsif @player1.turn == @player2.turn
      'Draw'
    else @player2
    end
  end
end
