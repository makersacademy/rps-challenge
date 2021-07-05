require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
    if @player.player_choice == @computer.computer_choice
      "Draw"
    elsif winning_combo[@player.player_choice] == @computer.computer_choice
      "Player wins"
    else
      "Computer wins"
    end
  end

  private

  def winning_combo
    { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
  end
end
