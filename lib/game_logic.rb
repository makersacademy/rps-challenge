require_relative 'computer'
require_relative 'player'
require_relative 'game'

class GameLogic

  def initialize(player_selection, computer_selection)
    @player_selection = @player.choice
    @computer_selection = @computer.choice
  end

  def game_logic
    p1 = @player_selection
    comp = @computer_selection
    if p1 == comp
      "Draw"
    elsif (p1 == "Rock" && comp == "Scissors")
      "#{p1} beats #{comp}"
    elsif (p1 == "Rock" && comp == "Paper")
      "#{p1} beats #{comp}"
    elsif (p1 == "Paper" && comp == "Scissors")
      "#{comp} beats #{p1}"
    elsif (p1 == "Paper" && comp == "Rock")
      "#{comp} beats #{p1}"
    elsif (p1 == "Scissors" && comp == "Paper")
      "#{p1} beats #{comp}"
    elsif (p1 == "Scissors" && comp == "Rock")
      "#{comp} beats #{p1}"
    end
  end
end
