class Player

  DEFAULT_SCORE = 0
  attr_reader :name, :score

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
  end

end
