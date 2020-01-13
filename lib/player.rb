
class Player
  attr_reader :name
  attr_accessor :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def add_point
    @score += 1
  end
end
