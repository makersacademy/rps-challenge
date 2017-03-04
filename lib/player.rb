class Player
  attr_reader :name
  attr_accessor :players_move

  def initialize(name)
    @name = name
  end

  def move(move)
    @players_move = move
  end
end
