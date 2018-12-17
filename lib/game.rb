
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
    elsif @player == "rock" && @computer == "scissors"
      return "You win"
    elsif @player == "paper" && @computer == "rock"
      return "You win"
    elsif @player == "paper" && @computer == "scissors"
      return "Computer wins"
    elsif @player == "scissors" && @computer == "rock"
      return "Computer wins"
    elsif @player == "scissors" && @computer == "paper"
      return "You win"
    end
  end
end
