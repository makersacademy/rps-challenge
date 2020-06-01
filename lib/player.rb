class Player
  attr_reader :name, :player_move
  def initialize(name)
    @name = name
    @player_move = nil
  end

  def move(move)
    @player_move = move
  end
end
