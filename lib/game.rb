require_relative 'player'
require_relative 'computer'

class Game

  def match(player_choice, computer_choice)
    if player_choice == computer_choice
     "It's a draw"
   elsif computer_choice == "Paper" && player_choice == "Scissors"
      "#{player.name} wins"
    elsif computer_choice == "Scissors" && player_choice == "Rock"
      "#{player.name} wins"
    elsif computer_choice == "Rock" && player_choice == "Paper"
      "#{player.name} wins"
    else
     "Computer wins"
    end
  end

end
