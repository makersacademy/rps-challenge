class Player

  attr_reader :name, :player_move

  def initialize(name)
    @name = name
  end

  def move(move)
    @player_move = move.to_sym
  end

end
