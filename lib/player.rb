class Player
  attr_reader :name, :move, :score
  def initialize(name)
    @name = name
    @score = 0
  end

  def make_move(move)
    @move = move
  end

  def add_point
    @score += 1
  end
end
