class RPSReferee

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
    return true if moves[0] == :rock && moves[1] == :scissors
    return true if moves[0] == :scissors && moves[1] == :paper
    return true if moves[0] == :paper && moves[1] == :rock
  end

end
