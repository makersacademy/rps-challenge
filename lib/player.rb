class Player

  attr_reader :name, :score

  WINNING_SCORE = 3

  def initialize(name)
    @name = name
    @score = 0
  end

  def score_up
    @score += 1
  end

  def winner?
    @score == WINNING_SCORE
  end

end
