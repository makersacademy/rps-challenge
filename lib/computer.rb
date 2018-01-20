class Computer

  attr_reader :move

  def initialize
    @name = "computer"
  end

  def make_move
    @move = Game::MOVES.sample
  end

end