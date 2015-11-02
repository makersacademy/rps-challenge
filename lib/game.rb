class Game
  
  SHAPES = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def result(player_shape, computer_shape)
    return :win if computer_shape == RULES[player_shape]
    return :lose if player_shape == RULES[computer_shape]
    return :tie if player_shape == computer_shape
  end
end