class Scores
  SCORES_HASH = {
                  rock: 1,
                  paper: 2,
                  scissors: 3
                }

  def decide_winner(p1, p2)
    score = SCORES_HASH[p1.to_sym] - SCORES_HASH[p2.to_sym]
    return :tie if score == 0
    score == 1 || score == -2 ? :p1 : :p2
  end
end