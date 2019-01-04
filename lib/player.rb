class Player
  attr_reader :name
  attr_accessor :move
  def initialize(name, move = nil)
    @name = name
    @move = move
    @win = 0
  end

  def update_move(move)
    @move = move
  end
end
