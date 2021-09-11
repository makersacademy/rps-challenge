class Game 
  attr_reader :player

  def initialize(player = "paper")
    @player = player
  end
  
  def opponent
    ["rock", "paper", "scissor"].sample
  end

  def result
    case 
      when opponent == player then "Draw!"
      when opponent == "paper" && player == "rock" then "You lose!"
      when opponent == "paper" && player == "scissor" then "You win!"
      when opponent == "rock" && player == "scissor" then "You lose!"
      when opponent == "rock" && player == "paper" then "You win!" 
      when opponent == "scissor" && player == "paper" then "You lose!"
      when opponent == "scissor" && player == "rock" then "You win!"
    end 
  end
end
