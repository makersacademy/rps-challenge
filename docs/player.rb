class Player

attr_reader :name, :move

  def initialize(name, move = nil)
    @name = name
    @move = move
  end

  def choose_move(move)
    @move = move
  end
end
