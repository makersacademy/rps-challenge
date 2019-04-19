require_relative 'player'

class Game

  attr_reader :player, :computer



  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def randomise_weapon
    ["Rock", "Paper", "Scissors"].sample 
  end

  def winner?
    if @player == @computer
      "DRAW"
    elsif @player == "rock" && @computer == "paper"
      "You chose rock and the computer chose paper - you lost! Better luck next time!"
    elsif @player == "paper" && @computer == "scissors"
      "You chose paper and the computer chose scissors - you win! Congratulations!"
    elsif @player == "scissors" && @computer == "rock"
      "You chose scissors and the computer chose rock - you win! Well done!"
    elsif @computer == "rock" && @player == "paper"
      "You chose paper and the computer chose rock! You win! Well done!"
    elsif @computer == "paper" && @player == "scissors"
      "You chose scissors but the computer chose paper - you lose! Hard luck!"
    else @computer == "scissors" && @player == "rock"
      "You chose rock and the computer chose scissors! Well done!"
    end
  end
end
