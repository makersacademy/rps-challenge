require './lib/computer_player'
require './lib/player'
class Game
  attr_reader :player_selection, :computer_choice

  def initialize(player_selection, computer_choice)
    @player_selection = player_selection
    @computer_choice = computer_choice
  end

  def game_result(player_selection, computer_choice)
    if @player_selection == @computer_choice
      "draw"
    elsif @player_selection == "Rock" && @computer_choice == "Scissors"
      "win"
    elsif @player_selection == "Scissors" && @computer_choice == "Paper"
      "win"
    elsif @player_selection == "Paper" && @computer_choice == "Rock"
      "win"
    else
      "lose"
    end
  end
end
