class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @move = []
  end

  def player_move(move)
    @move << move

  end
end
