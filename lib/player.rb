class Player

  attr_reader :name, :score
  attr_accessor :selection

  def initialize(name)
    @name = name
    @score = 0
  end

  def score_up
    @score += 1
  end

end
