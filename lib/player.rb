class Player

  attr_reader :name
  attr_accessor :score

  SCORE = 0

  def initialize(name, score = SCORE)
    @name = name
    @score = score
  end
end
