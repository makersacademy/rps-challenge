require_relative 'player'
require_relative 'computer'

class Game
  player_choice = player.choice
  computer_choice = computer.choice
  
  def compare(player_choice, computer_choice)
    if player_choice == 'rock'
      if computer_choice == 'rock'
      	"You both draw!"
      elsif computer_choice == 'paper'
        "Oh no! Computer wins!"
      else
      	"YOU WIN!!!"
      end
    elsif player_choice == 'paper'
      if computer_choice == 'rock'
      	"YOU WIN!!!"
      elsif computer_choice == 'paper'
      	"You both draw!"
      else
      	"Oh no! Computer wins!"
      end
    elsif player_choice == 'scissors'
      if computer_choice == 'rock'
      	"Oh no! Computer wins!"
      elsif computer_choice == 'paper'
      	"YOU WIN!!!"
      else computer_choice == 'scissors'
      	"You both draw!"
      end
    else
      "This intense rock, paper scissors game has just broken our site..."
    end	
  end
end