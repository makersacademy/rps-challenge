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
    if selection1 == selection2
      return 'draw'
    elsif p1_win(selection1, selection2)
      return 'player1'
    else
      return 'player2'
    end
  end

  private

  def p1_win(selection1, selection2)
    [
      [options[0], options[2]],
      [options[1], options[0]],
      [options[2], options[1]]
    ].include? [selection1, selection2]
  end
end
