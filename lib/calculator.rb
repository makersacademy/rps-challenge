class Calculator
  RESULT_MATRIX = {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
  }

  def initialize(player_1_weapon, player_2_weapon)
    @p1 = player_1_weapon
    @p2 = player_2_weapon
  end

  def result
    return :draw if @p1 == @p2
    return :player_1_wins if RESULT_MATRIX[@p1] == @p2
    return :player_2_wins if RESULT_MATRIX[@p2] == @p1
  end

end
