class Game
  attr_reader :player, :result, :tally

  MOVES = ['Rock', 'Paper', 'Scissors'].freeze

  def initialize(player)
    @player = player
    @tally = { player: 0, computer: 0, draws: 0 }
  end

  def computer_move
    MOVES.sample
  end

  def outcome(move1, move2)
    if MOVES.find_index(move1) == MOVES.find_index(move2)
      @tally[:draws] += 1
      :draw
    elsif (MOVES.find_index(move1) + 1) % 3 == MOVES.find_index(move2)
      @tally[:computer] += 1
      :lose
    else
      @tally[:player] += 1
      :win
    end
  end
end
