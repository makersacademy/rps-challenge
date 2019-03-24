require_relative 'player'
require_relative 'player'

class Game
  attr_reader :player, :computer

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  BEATMAP = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }

  def winner
    if @player.move == @computer.computer_move
      "Draw!"
    elsif BEATMAP[@player.move] == @computer.computer_move
      "You win!"
    else
      "The computer wins!"
    end
  end
end
