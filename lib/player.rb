class Player

  attr_reader :name, :move

  def initialize(name = "Robot", move = Move.new)
    @name = name
    @move = move
  end

  def player_2_move
    @move.player_2_move(@name)
  end

end
