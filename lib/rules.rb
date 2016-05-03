class Rules
  MOVES = [:rock, :paper, :scissors]
  RESULTS = {
              rock: {scissors: :win, paper: :lose, rock: :draw},
              paper: {rock: :win, scissors: :lose, paper: :draw},
              scissors: {paper: :win, rock: :lose, scissors: :draw}
            }

  def random_move
    moves.sample
  end

  def calculate_result(move_1, move_2)
    results[move_1.to_sym][move_2.to_sym]
  end

  def results
    RESULTS
  end

  def moves
    MOVES
  end

end