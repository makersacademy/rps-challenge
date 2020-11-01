class GameLogic

  def self.ai_selection
    GameLogic.new.ai_selection
  end

  def self.options
    GameLogic.new.options
  end

  def self.result(selection1, selection2)
    GameLogic.new.result(selection1, selection2)
  end

  def options
    ['rock', 'paper', 'scissors']
  end

  def ai_selection
    options.sample
  end

  def result(selection1, selection2)
    return 'draw' if selection1 == selection2

    return 'player1' if p1_win(selection1, selection2)

    'player2'
  end

  private

  def p1_win(selection1, selection2)
    win_conditions = {
      options[0] => [options[2]],
      options[1] => [options[0]],
      options[2] => [options[1]]
    }
    win_conditions[selection1].include? selection2
  end
end
