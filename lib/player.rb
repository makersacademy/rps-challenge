class Player
  attr_reader :move
  def initialize(name)
    @move = nil
    @name = name
  end

  def name
    @name
  end
  
  def store_move(move)
    @move = move
  end
end