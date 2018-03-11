class Player

  attr_reader :name
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def add_point
    @score += 1
  end
end
