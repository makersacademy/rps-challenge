class Referee

  @@moves = ["rock","paper","scissors","spock","lizard"]

  def result(p1_move, p2_move = ai_move)
    winner = judge(p1_move, p2_move)
    [p1_move, p2_move, winner]
  end

  def ai_move
    @@moves.sample
  end

  def judge(move, opp_move)
    difference = (@@moves.index(move) - @@moves.index(opp_move))
    return "player1" if [-2,-4,1,3].include?(difference%5)
    return "player2" if [2,4,-1,-3].include?(difference%5)
    "draw"
  end

end
