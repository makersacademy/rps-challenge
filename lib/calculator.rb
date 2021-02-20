class Calculator
  RESULT_MATRIX = {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
  }

  def initialize(p1_turn, p2_turn)
    @p1 = p1_turn.choice
    @p2 = p2_turn.choice
  end

  def result
    return :draw if @p1 == @p2
    return :player_1_wins if RESULT_MATRIX[@p1] == @p2
    return :player_2_wins if RESULT_MATRIX[@p2] == @p1
  end

end
