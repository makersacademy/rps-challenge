require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :computer

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player = Player.new, computer = Computer.new)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  # this can be extracted to a different class.

  BEATMAP = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }

  def winner
    if @player.option == @computer.computer_move
      "Draw!"
    elsif BEATMAP[@player.option] == @computer.computer_move
      "You win!"
    else
      "The computer wins!"
    end
  end
end
