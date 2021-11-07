class Game

  def initialize(player_1, computer)
    @players = [player_1, computer]
  end

  def player_1
    @players[0]
  end

  def computer
    @players[1]
  end

  def decide_winner
    if (@players[0].choice == "Rock" && @players[1].move == "Scissors") || (@players[0].choice == "Scissors" && @players[1].move == "Paper") || (@players[0].choice == "Paper" && @players[1].move == "Rock")
      "#{@players[0].name} won!"
    elsif (@players[0].choice == "Rock" && @players[1].move == "Rock") || (@players[0].choice == "Paper" && @players[1].move == "Paper") || (@players[0].choice == "Scissors" && @players[1].move == "Scissors")
      "Neither won. It was a draw!"
    else
      "#{@players[1].name} won!"
    end
  end

end
 
