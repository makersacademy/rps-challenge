class Player

  attr_reader :move

  def initialize(name)
    @name = name
  end

  def make_move(move)
    @move = move
  end
  
end