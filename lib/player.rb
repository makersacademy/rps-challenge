class Player
  attr_reader :name

  def initialize(name)
    @score = 0
    @name = name
  end

  def score
    @score
  end

  def score_plus
    @score += 1
  end

end
