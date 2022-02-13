class Move

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def outcome(p1_move, p2_move)
    return :Draw if draw(p1_move, p2_move)
    return :Win if wins(p1_move, p2_move)
    return :Lose if !wins(p1_move, p2_move)
  end

  def draw(p1_move, p2_move)
    p1_move == p2_move
  end

  def wins(p1_move, p2_move)
    RULES[p1_move] == p2_move
  end

end