require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :computer

  RULES = {
    "ROCK" => "SCISSORS",
    "PAPER" => "ROCK",
    "SCISSORS" => "PAPER"
  }

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def computer_move
    @computer_move = @computer.weapon
  end

  def results
    if @player.weapon == @computer_move then "It's a draw!"
    elsif RULES[@player.weapon] == @computer_move then "#{player.name} wins!"
    else
      "The computer wins."
    end
  end

end
