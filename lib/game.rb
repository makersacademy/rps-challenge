
require_relative 'computer.rb'
require_relative 'player.rb'
class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def play
    if @player == @computer
      return "It's a draw"
    elsif @player == "rock" && @computer == "paper"
      return "Computer wins"
    elsif @player == "rock" && @computer == "scissor"
      return "You win"
    elsif @player == "paper" && @computer == "rock"
      return "You win"
    elsif @player == "paper" && @computer == "scissor"
      return "Computer wins"
    elsif @player == "scissor" && @computer == "rock"
      return "Computer wins"
    elsif @player == "scissor" && @computer == "paper"
      return "You win"
    end
  end
end
