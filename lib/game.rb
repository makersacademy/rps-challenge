require_relative 'computer'
require_relative 'player'

class Game

  attr_accessor :player, :computer

  RULES = {
    "ROCK" => "SCISSORS",
    "PAPER" => "ROCK",
    "SCISSORS" => "PAPER"
  }

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def results
    if @player.weapon == @computer.weapon then "It's a draw!"
    elsif RULES[@player.weapon] == @computer.weapon then "#{player.name} wins!"
    else
      "The computer wins."
    end
  end

end
