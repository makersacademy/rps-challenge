class Compare
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner?
    if @player == @computer
      "DRAW"
    elsif @player == "rock" && @computer == "scissors"
      "Rock beats scissors - you won!"
    elsif @player == "scissors" && @computer == "paper"
      "Scissors beats paper - you won!"
    elsif @player == "paper" && @computer == "rock"
      "Paper beats rock - you won!"
    else
      "Unlucky! You lost!"
    end
  end
end
