class Player

  attr_reader :name, :move

  def save_name(name)
    @name = name
  end

  def save_move(move)
    @move = move
  end

end
