require_relative 'player'
require_relative 'computer'

class Game

  WEAPONS = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player_choose(weapon)
    @player.choose(weapon)
  end

  def computer_choose
    @computer.choose_weapon
  end

  def result
    if @player.weapon != @computer.weapon
      WEAPONS[@player.weapon] == @computer.weapon ? 'Congratulations!' : 'Better luck next time'
    else
      "It's a tie"
    end
  end
end
