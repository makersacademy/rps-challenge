require_relative "player.rb"
require_relative "computer.rb"

class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def outcome(p1, p2)
    winning_moves = {
      "Rock" => "Scissors",
      "Scissors" => "Paper",
      "Paper" => "Rock"
    }
    return "Draws!" if p1 == p2
    winning_moves[p1] == p2 ? "Wins!": "Loses!"
  end

end
