class Player

  attr_reader :name, :moves

  def initialize(name)
    @name = name
    @moves = []
  end

  def store_move(move)
    @moves << move
  end
end
