class RockPaperScissors
  RESULT_DRAW = '🙏'
  RESULT_ROCK = '🗿'
  RESULT_PAPER = '📄'
  RESULT_SCISSORS = '✂'

  def result(player_1, player_2)
    return RESULT_DRAW if player_1.move == player_2.move
    return RESULT_ROCK if player_1.move == '🗿' && player_2.move == '✂'
    return RESULT_PAPER if player_1.move == '🗿' && player_2.move == '📄'
    return RESULT_PAPER if player_1.move == '📄' && player_2.move == '🗿'
    return RESULT_SCISSORS if player_1.move == '📄' && player_2.move == '✂'
    return RESULT_SCISSORS if player_1.move == '✂' && player_2.move == '📄'
    return RESULT_ROCK if player_1.move == '✂' && player_2.move == '🗿'

  end

end
