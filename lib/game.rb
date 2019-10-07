class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner?
    if @player == @computer
      "Draw!"
    elsif @player == "rock" && @computer == "paper"
      "You chose rock and the computer chose paper - you lost! :("
    elsif @player == "paper" && @computer == "scissors"
      "You chose paper and the computer chose scissors - you win! :D"
    elsif @player == "scissors" && @computer == "rock"
      "You chose scissors and the computer chose rock - you win! :D"
    elsif @computer == "rock" && @player == "paper"
      "You chose paper and the computer chose rock! You win! Well done!"
    elsif @computer == "paper" && @player == "scissors"
      "You chose scissors but the computer chose paper - you lose! Hard luck!"
    else @computer == "scissors" && @player == "rock"
      "You chose rock and the computer chose scissors! Well done!"
    end
  end
end
