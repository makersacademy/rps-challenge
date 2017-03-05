class Player

attr_reader :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def adjust_score(points)
    @score += points
  end

end
