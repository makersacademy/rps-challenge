class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def select_move(move)
    @move = move
  end

end
