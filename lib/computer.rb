class Computer

  MOVES = [:rock, :paper, :scissors]

  attr_reader :name, :move, :score

  def initialize(score = 0)
    @name = "Computer"
    @score = score
  end

  def choose
    @move = MOVES.sample
  end

  def tally_score
    @score += 1
  end

end
