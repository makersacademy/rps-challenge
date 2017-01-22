class Player

  attr_reader :name, :score
  DEFAULT_SCORE = 0

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
  end

  def add_win
    @score += 1
  end
  
end
