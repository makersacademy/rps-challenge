class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name.capitalize
  end

  def player_move(move)
    @move = move
  end
end
