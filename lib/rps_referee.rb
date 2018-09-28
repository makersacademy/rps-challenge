class RPSReferee

  WINNING_TYPES = [[:rock, :scissors],[:scissors, :paper], [:paper, :rock]]

  def decision(moves)
    return :Draw if draw?(moves)
    return 0 if player1_wins?(moves)
    1
  end

  private

  def draw?(moves)
    moves[0] == moves[1]
  end

  def player1_wins?(moves)
    return true if WINNING_TYPES.include?(moves)
  end

end
