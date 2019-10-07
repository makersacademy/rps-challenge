class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    case 
    when @player == "rock" && @computer == "scissors"
      "You win!"
    when @computer == "rock" && @player == "scissors"
      "Computer wins"
    when @player == "paper" && @computer == "rock"
      "You win!"
    when @computer == "paper" && @player == "rock"
      "Computer wins"
    when @player == "scissors" && @computer == "paper"
      "You win!"
    when @computer == "scissors" && @player == "paper"
      "Computer wins"
    else
      "It's a draw"
    end
  end

end
