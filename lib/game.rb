require_relative 'player'
require_relative 'computer'

class Game

  WEAPONS = {"Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock"}
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
end
