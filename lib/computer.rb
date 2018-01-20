class Computer

  attr_reader :move

  def initialize
    @name = "computer"
  end

  def move=(move = Game::MOVES.sample)
    @move = move
    
  end

end