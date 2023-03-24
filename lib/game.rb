class Game 
  attr_reader :inputs

  def initialize(player_input)
    @player_input = player_input
    @inputs = [player_input]
  end
  
  def result
    store_opponent_input
    player, opponent = @inputs  
    return :draw if player == opponent
    winning_moves[player] == opponent ? :win : :lose
  end

  private 

  def store_opponent_input
    @inputs << opponent_input
  end

  def opponent_input # encapsulate to enable stubbing while testing
    ["rock", "paper", "scissor"].sample
  end

  def winning_moves
    winning_moves = {
      'rock' => 'scissor',
      'scissor' => 'paper',
      'paper' => 'rock'
    }  
  end
end


