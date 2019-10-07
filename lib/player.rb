
class Player
  DEFAULT_SCORE = 0
  attr_reader :name
  attr_accessor :score
  def initialize(name)
    @name = name
    @score = DEFAULT_SCORE
  end
end
