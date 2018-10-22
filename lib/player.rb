class Player

attr_reader :move

  def initialize (name)
    @name = name
    @score = 0
  end

  def get_name
    @name
  end

  def get_score
    @score
  end

  def get_move
    @move
  end

  def increase_score
    @score += 1
  end

  def define_move(move)
    @move = move
  end

end
