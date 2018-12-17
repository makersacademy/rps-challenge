
class Game

  def initialize(player)
    @pc = ["rock", "paper", "scissors"].sample
    @player = player
  end

  def play
    if @player == @pc
      return "It's a draw"
    elsif @player == "rock" && @pc == "paper"
      return "PC wins"
    elsif @player == "rock" && @pc == "scissors"
      return "You win"
    elsif @player == "paper" && @pc == "rock"
      return "You win"
    elsif @player == "paper" && @pc == "scissors"
      return "PC wins"
    elsif @player == "scissors" && @pc == "rock"
      return "PC wins"
    elsif @player == "scissors" && @pc == "paper"
      return "You win"
    end
  end
end
