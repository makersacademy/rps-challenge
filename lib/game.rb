class Game

attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def decide_winner
    if @player == @computer
      "It's a draw"
    elsif @player == "rock" && @computer == "scissors"
      "player wins"
    elsif @player == "scissors" && @computer == "paper"
      "player wins"
    elsif @player == "paper" && @computer == "rock"
      "player wins"
    else
      "computer wins"
    end
  end
end
