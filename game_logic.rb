class GameLogic
  attr_accessor :computer

  def initialize(player)
    @player = player
    @computer = ["rock", "paper", "scissors"].sample
  end

  def result
    if @player == @computer
      "There was a draw"
    elsif @player == "rock"
      if @computer == "scissors"
        "You win"
        session[:score] += 1
      else 
        "You lose"
      end
    elsif @player == "scissors"
      if @computer == "paper"
        "You win"
        session[:score] += 1
      else 
        "You lose"
      end
    elsif @player == "paper"
      if @computer == "rock"
        "You win"
        session[:score] += 1
      else
        "You lose"
      end
    end
  end
end
