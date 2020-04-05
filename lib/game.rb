class Game

attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def decide_winner
    return "It's a draw" if @player == @computer
    return "player wins" if @player == "rock" && @computer == "scissors"
    return "player wins" if @player == "scissors" && @computer == "paper"
    return "player wins" if @player == "paper" && @computer == "rock"
    return "computer wins"
  end
end
