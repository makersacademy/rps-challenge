
class Player
  DEFAULT_SCORE = 0
  attr_reader :score, :name
  def initialize(name)
    @name = name
    @score = DEFAULT_SCORE
  end
end
