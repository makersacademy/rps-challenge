class RandomMove
  attr_reader :random_moves

  def initialize
    @random_moves = ['Rock', 'Paper', 'Scissors']
  end

  def random_move
    random_moves.sample
  end
end
