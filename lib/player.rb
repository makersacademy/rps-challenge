# Player supports a name and a score.
class Player
  attr_reader :name, :score

  def initialize(name, score: 0)
    @name = name
    @score = score
  end

  def increment(points = 1)
    @score += points
  end
end
