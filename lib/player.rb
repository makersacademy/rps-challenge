class Player
  attr_reader :name, :players_move

  def initialize(name)
    @name = name
  end

  def move(move)
    @players_move = move
  end
end
