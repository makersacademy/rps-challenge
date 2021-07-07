class RockPaperScissors
  RESULT_DRAW = '🙏'
  RESULT_ROCK = '🗿'
  RESULT_PAPER = '📄'
  RESULT_SCISSORS = '✂'

  RULES = {
    '🗿' => { '🗿' => '🙏', '📄' => '📄', '✂' => '🗿' },
    '📄' => { '🗿' => '📄', '📄' => '🙏', '✂' => '✂' },
    '✂' => { '🗿' => '🗿', '📄' => '✂', '✂' => '🙏' },
  }
  
  def result(player_1, player_2)
    RULES[player_1.move][player_2.move]
  end

end
