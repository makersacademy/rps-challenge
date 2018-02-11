class Computer

  MOVES = [:rock, :paper, :scissors]

  attr_reader :move

  def name
    @name = "Computer"
  end

  def score
    @score = 0
  end

  def choose
    @move = MOVES.sample
  end

end
