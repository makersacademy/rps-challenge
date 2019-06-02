class WinnerCalculator

  WINNING_MOVES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }  

  def calculate(player_one, player_two)
    return :draw if player_one.move == player_two.move
    compare_moves(player_one, player_two)
  end

  private

  def compare_moves(player_one, player_two)
    if WINNING_MOVES[player_one.move] == player_two.move
      return player_one
    else
      return player_two
    end
  end
end