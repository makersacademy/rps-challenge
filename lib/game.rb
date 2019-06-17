require_relative 'computer'
require_relative 'player'

class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
    if @player.player_choice == "Paper" && @computer.computer_choice == "Rock"
       "Player wins"
     elsif @player.player_choice == "Scissors" && @computer.computer_choice == "Paper"
       "Player wins"
    elsif @player.player_choice == "Rock" && @computer.computer_choice == "Scissors"
       "Player wins"
    elsif @computer.computer_choice == "Paper" && @player.player_choice == "Rock"
       "Computer wins"
    elsif @computer.computer_choice == "Scissors" && @player.player_choice == "Paper"
       "Computer wins"
    elsif @computer.computer_choice == "Rock" && @player.player_choice == "Scissors"
       "Computer wins"
     else
       "Draw!"
    end
  end

end
