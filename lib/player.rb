class Player
  attr_reader :name, :score

  DEFAULT_POINTS = 10

  def initialize(name)
    @name = name
    @score = 0
  end

  def increase_score
    @score += DEFAULT_POINTS
  end
  
  def decrease_score
    @score -= DEFAULT_POINTS
  end
end
