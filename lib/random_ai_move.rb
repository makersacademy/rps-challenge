# frozen_string_literal: true

class RandomAiMove
  def choose_move(_, valid_moves)
    valid_moves.sample
  end
end