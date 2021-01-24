require_relative 'computer'
require_relative 'player'

class Game

  def show_winner(computer_move, player_move)
    if computer_move == "Rock" && player_move == "Paper"
      "Player wins!"
    elsif computer_move == "Paper" && player_move == "Scissors"
      "Player wins!"
    elsif computer_move == "Scissors" && player_move == "Rock"
      "Player wins"
    elsif computer_move == "Paper" && player_move == "Rock"
      "Computer wins!"
    elsif computer_move == "Scissors" && player_move == "Paper"
      "Computer wins!"
    elsif computer_move == "Rock" && player_move == "Scissors"
      "Computer wins!"
    else
        "Its a draw"
    end
  end

end
