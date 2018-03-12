require_relative './computer.rb'
require_relative './player.rb'

class Play

  def winner(computer_choice, player_choice)
    if player_choice == "Rock"
      if computer_choice == "Rock"
        "It's a draw!"
      elsif computer_choice == "Paper"
        "You lose!"
      else
        "You win!"
      end
    elsif player_choice == "Paper"
      if computer_choice == "Rock"
        "You win!"
      elsif computer_choice == "Paper"
        "It's a draw!"
      else
        "You lose!"
      end
    elsif player_choice == "Scissors"
      if computer_choice == "Rock"
        "You lose!"
      elsif computer_choice == "Paper"
        "You win!"
      else
        "It's a draw!"
      end
    else
      "Error! Try again!"
    end
  end
  end
