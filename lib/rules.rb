# frozen_string_literal: true

class Rules
  VALID_MOVES = %i[rock paper scissors].freeze
  WINNING_COMBINATIONS = [%i[rock scissors],
                          %i[paper rock],
                          %i[scissors paper]].freeze

  def winner(pl1, pl2)
    return nil if draw?(pl1, pl2)
    win_for_player1?(pl1, pl2) ? pl1 : pl2
  end

  def valid_moves
    VALID_MOVES
  end

  private

  def win_for_player1?(pl1, pl2)
    WINNING_COMBINATIONS.include?(moves(pl1, pl2))
  end

  def draw?(pl1, pl2)
    pl1.chosen_move == pl2.chosen_move
  end

  def moves(pl1, pl2)
    [pl1.chosen_move, pl2.chosen_move]
  end
end