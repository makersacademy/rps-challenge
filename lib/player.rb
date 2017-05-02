class Player

  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def record_score
    @score += 1
  end

end
