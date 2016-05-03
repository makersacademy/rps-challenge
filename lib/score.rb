class Score

  START_SCORE = 0
  POINT = 1

  attr_reader :total, :comp_total

  def initialize
    @total = START_SCORE
    @comp_total = START_SCORE
  end

  def add
    @total += POINT
  end

  def comp_add
    @comp_total += POINT
  end

  def reset
    @total = START_SCORE
    @comp_total = START_SCORE
  end

end