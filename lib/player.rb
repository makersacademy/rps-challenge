class Player
  def initialize(name)
    @name = name
    @move = nil
  end
  attr_reader :name, :move

  def make_move(move)
    @move = move
  end
end
