class Scores
  SCORES_HASH = {
    rock: 1,
    paper: 2,
    scissors: 3
    }

  def decide_winner(p1, p2)
    score = scores_hash[p1.to_sym] - scores_hash[p2.to_sym]
    return :tie if score == 0
    score == 1 || score == -2 ? :p1 : :p2
  end

  private
  def scores_hash
    SCORES_HASH
  end
end