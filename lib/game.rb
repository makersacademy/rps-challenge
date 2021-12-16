class Game 
  attr_reader :inputs

  def initialize(player_input)
    @player_input = player_input
    @inputs = [player_input]
  end
  
  def store_opponent_input
    @inputs << opponent_input
    opponent_input
  end

  def opponent_input # encapsulate to enable stubbing while testing
    ["rock", "paper", "scissor"].sample
  end

  def result
    store_opponent_input
    p @inputs
    player, opponent = @inputs
    case
      when player == "rock" && opponent == "paper" then return :lose
      when player == "scissor" && opponent == "paper" then return :win
      when player == "scissor" && opponent == "rock" then return :lose
      when player == "paper" && opponent == "rock" then return :win
      when player == "paper"  && opponent == "scissor" then return :lose
      when player == "rock" && opponent == "scissor" then return :win
      else
        :draw
    end 
  end
end


