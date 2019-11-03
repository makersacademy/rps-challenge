class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def computer_move
    ["Paper", "Rock", "Scissors"].sample
  end

  def winner(player1move, player2move)
    if player1move == player2move
      "...there is no winner, it's a draw!"
    else
      case player1move
        when "Rock"
          player2move == "Scissors" ? @player1 : @player2
        when "Scissors"
          player2move == "Rock" ? @player2 : @player1
        when "Paper"
          player2move == "Rock" ? @player1 : @player2
      end
    end
  end

end
