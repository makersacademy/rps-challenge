
class Player
  attr_reader :score, :name

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def increment_score(increment_amount = 0)
    @score += increment_amount
  end
end
