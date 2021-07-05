class Player
  attr_reader :name, :score, :move

  def initialize(name)
    @name = name
    @score = 0
  end

  def assign_move(move)
    @move = move
  end

  def increment_score
    @score += 1
  end

end
