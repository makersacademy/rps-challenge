class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = 'test'
  end

  def set_move(move)
    @move = move
  end

end
