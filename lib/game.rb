require_relative 'player'
require_relative 'computer'

class Game

  def match(player_choice, computer_choice)
    if player_choice == computer_choice
     "It's a draw"
   elsif computer_choice == "Paper" && player_choice == "Scissors"
      "You win"
    elsif computer_choice == "Scissors" && player_choice == "Rock"
      "You win"
    elsif computer_choice == "Rock" && player_choice == "Paper"
      "You win"
    else
     "Computer wins"
    end
  end

end
