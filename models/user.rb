class User
  attr_reader :name, :move, :moves

  def initialize(username)
    @name = username
    @moves = []
  end

  def current_move(move)
    @move = move
    history(move)
  end

  def history(move)
    @moves << move
  end

  def reset
    @move = nil
  end

end