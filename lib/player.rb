class Player

  attr_reader :name, :score
  DEFAULT_SCORE = 0

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
    @weapon = nil
  end

end
