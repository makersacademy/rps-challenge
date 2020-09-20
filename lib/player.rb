class Player
  attr_reader :the_move, :name

  def initialize(name)
    @name = name
  end

  def move(move)
    @the_move = move
  end
end