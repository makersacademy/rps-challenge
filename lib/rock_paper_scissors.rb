class RockPaperScissors
  RESULT_DRAW = "It's a draw!"
  RESULT_WINS = " wins!"
  
  def result(player_1, player_2)
    return RESULT_DRAW if player_1.move == player_2.move
    return "#{player_1.name} #{RESULT_WINS}" if player_1.move == '🗿' && player_2.move == '✂'
    return "#{player_2.name} #{RESULT_WINS}" if player_1.move == '🗿' && player_2.move == '📄'
    return "#{player_1.name} #{RESULT_WINS}" if player_1.move == '📄' && player_2.move == '🗿'
    return "#{player_2.name} #{RESULT_WINS}" if player_1.move == '📄' && player_2.move == '✂'
    return "#{player_2.name} #{RESULT_WINS}" if player_1.move == '✂' && player_2.move == '🗿'
    return "#{player_1.name} #{RESULT_WINS}" if player_1.move == '✂' && player_2.move == '📄'
  end

end
