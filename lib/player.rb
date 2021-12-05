class Player
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  # can i make these two one method and use a default reading 
  # for move = @move or make it an optional param?
  def assign_move(move)
    @move = move
  end

  def read_move
    @move
  end
end
