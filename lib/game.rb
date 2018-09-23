require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player, :computer

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(player, computer = Computer.new)
   @player = player
   @computer = computer
  end

  def result
    computer_choice = @computer.choice
    player_choice = @player.choice
    if RULES[player_choice] == computer_choice
      "Yay #{@player.name}, you won!"
    elsif RULES[computer_choice] == player_choice
      "Sorry #{@player.name}, you lost!"
    else
      "Close one #{@player.name} but you drew!"
    end
  end
end
