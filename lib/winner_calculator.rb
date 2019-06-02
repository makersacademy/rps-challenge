class WinnerCalculator

  WINNING_MOVES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }  

  def calculate(p1_move, p2_move)
    return :draw if p1_move == p2_move
    compare_moves(p1_move.to_sym, p2_move.to_sym)
  end

  private

  def compare_moves(p1_move, p2_move)
    if WINNING_MOVES[p1_move] == p2_move
      return :player_one 
    else
      return :player_two
    end
  end
end