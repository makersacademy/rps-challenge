require_relative 'game'

class RandomMove

  def initialize(moves = Game::MOVES)
    @moves = moves
  end

  def move()
    @moves.sample
  end

end
