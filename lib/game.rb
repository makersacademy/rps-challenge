class Game 
  attr_reader :input

  def initialize(player_input = "paper")
    @input = [player_input]
  end
  
  def opponent
    opponent_input = ["rock", "paper", "scissor"].sample
    @input << opponent_input
    opponent_input
  end

  def result
    player, opponent = @input[0], @input[1]
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
