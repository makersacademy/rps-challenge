class Decide
  attr_reader :player_hand, :opponent_hand

  RULES = {
    Rock: {Rock: :draw, Paper: :lose, Scissors: :win},
    Paper: {Rock: :win, Paper: :draw, Scissors: :lose},
    Scissors: {Rock: :lose, Paper: :win, Scissors: :draw}
  }

  def initialize(player_hand, opponent_hand)
    @player_hand = player_hand.to_sym
    @opponent_hand = opponent_hand.to_sym
  end

  def result
    RULES[@player_hand][@opponent_hand]
  end
end
