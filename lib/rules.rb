class Rules
  VALID_MOVES = %i[rock paper scissors].freeze
  WINNING_COMBINATIONS = [%i[rock scissors],
                          %i[paper rock],
                          %i[scissors paper]].freeze

  def winner(p1, p2)
    return nil if p1.chosen_move == p2.chosen_move

    WINNING_COMBINATIONS.include?(moves(p1, p2)) ? p1 : p2
  end

  def valid_moves
    return VALID_MOVES
  end

  private

  def moves(p1, p2)
    [p1.chosen_move, p2.chosen_move]
  end
end