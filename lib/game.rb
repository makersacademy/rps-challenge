require "player"
require "computer"

class Game
  attr_reader :player, :computer

  def initialize(player:, computer:)
    @player, @computer = player, computer
  end

  def winner
    ply, cmp = player.shape, computer.shape
    return "tie" if ply == cmp
    return @player if ply == "rock" && cmp == "scissors"
    return @player if ply == "paper" && cmp == "rock"
    return @player if ply == "scissors" && cmp == "paper"
    return @computer if cmp == "rock" && ply == "scissors"
    return @computer if cmp == "paper" && ply == "rock"
    return @computer if cmp == "scissors" && ply == "paper"
  end
end
