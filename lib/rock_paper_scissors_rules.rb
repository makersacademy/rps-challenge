class RockPaperScissorsRules

  def moves
    [:rock, :paper, :scissors]
  end

  def result player_move, opponent_move
    return :draw if draw? player_move, opponent_move
    return :win if win? player_move, opponent_move
    :lose
  end

  private
  def draw? player_move, opponent_move
    player_move == opponent_move
  end

  def win? player_move, opponent_move
    (moves.index(player_move) - 1) % 3 == moves.index(opponent_move)
  end

end