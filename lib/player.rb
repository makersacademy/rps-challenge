class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def score_up
    @score += 1
  end

  def reset_score
    @score = 0
  end

end
