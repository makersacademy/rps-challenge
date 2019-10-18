class Player

  attr_reader :player_name, :move

  def initialize(name)
    @player_name = name
  end

  def players_move(move)
    @move = move
  end

end
