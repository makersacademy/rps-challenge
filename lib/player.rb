class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def make_move(move)
    @move = move
  end

end
