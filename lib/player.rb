# frozen_string_literal: true

class Player
  attr_reader :name, :id, :decision_delegate, :chosen_move

  def initialize(name, decision_delegate, id_generator)
    @name = name
    @id = id_generator.next
    @decision_delegate = decision_delegate
  end

  def request_move(valid_moves)
    @chosen_move = @decision_delegate.choose_move(id, valid_moves)
  end

  def new_turn
    @chosen_move = nil
  end
end