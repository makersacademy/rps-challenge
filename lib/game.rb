require_relative 'player'
require_relative 'computer'
class Game
  attr_reader :player, :computer
  RULES = {"Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock"}
  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    if @player.choice == @computer.choice
      "It's a draw!"
    elsif @player.choice == RULES[@computer.choice]
      "The computer won :("
    else
      "You won!"
    end
  end
end
