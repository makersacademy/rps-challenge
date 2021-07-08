require_relative 'computer'
require_relative 'player'

class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
    if winning_combo[@computer.computer_choice] == @player.player_choice
      "Computer wins"
    elsif winning_combo[@player.player_choice] == @computer.computer_choice
      "Player wins"
     else
       "Draw"
    end
  end

private

  def winning_combo
    { rock: :scissors, paper: :rock, scissors: :paper }
  end
end
