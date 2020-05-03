class RockPaperScissors
  RESULT_DRAW = "It's a draw!"

  def result(player_1, player_2)
    return RESULT_DRAW if player_1.move == player_2.move

  end

end
