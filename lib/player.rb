class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name = "Robot", move = Move.new)
    @name = name
    @move = move
  end

  def player_2_move
    @move.player_2_move(@name)
  end

end
