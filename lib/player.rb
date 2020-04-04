class Player

  attr_reader :name, :turn

  def initialize(name)
    @name = name
    @turn = nil
  end

  def player_move(play)
    @turn = play
  end
end
