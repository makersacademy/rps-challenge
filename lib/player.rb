class Player
  attr_reader :name
  DEFAULT_SCORE = 0

  def initialize(name)
    @name = name
    @score = DEFAULT_SCORE
  end

end
