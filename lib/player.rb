class Player
  attr_reader :name, :move
  
  def initialize(name = 'Hal3000')
    @name = name.capitalize
    @move = nil
  end

  def add_move(move)
    @move = move
  end
end