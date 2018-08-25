class Player

  attr_accessor :name, :move

  def add_name(name)
    @name = name
  end

  def record_move(move)
    @move = move
  end

end
