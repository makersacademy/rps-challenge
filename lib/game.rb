class Game
  attr_reader :player, :result

  MOVES = ['Rock', 'Paper', 'Scissors'].freeze

  def computer_move
    MOVES.sample
  end

  def outcome(move1, move2)
    if MOVES.find_index(move1) == MOVES.find_index(move2)
      :draw
    elsif (MOVES.find_index(move1) + 1) % 3 == MOVES.find_index(move2)
      :lose
    else
      :win
    end
  end
end
