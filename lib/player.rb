
class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name  
  end

  def assign_move(move)
    @move = move
  end

  def reset_move
    @move = nil
  end

end
