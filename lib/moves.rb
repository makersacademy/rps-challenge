class Moves

  def initialize(moves = nil)
    @moves = moves
  end

  def random_move
    moves.sample
  end

  private

  def moves
    @moves || ['rock', 'paper', 'scissors']
  end

end