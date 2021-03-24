class Player

  attr_reader :name, :score, :move

  def initialize(name)
    @name = name
    @score = 0
  end

  def wins
    @score += 1
  end

  def next_move(move)
    @move = move
  end
end
