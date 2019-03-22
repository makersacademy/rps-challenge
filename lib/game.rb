require_relative 'player'
require_relative 'computer'
class Game
  attr_reader :player, :computer, :start
  RULES = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }
  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
    @start = false
  end

  def result
    @start = true
    if @player.choice == @computer.choice
      "It's a draw!"
    elsif @player.choice == RULES[@computer.choice]
      "The computer won :("
    else
      "You won!"
    end
  end
end
