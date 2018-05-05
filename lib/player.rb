class Player

  attr_reader :name, :score
  attr_accessor :decision

  def initialize(name)
    @name = name
    @decision = decision
    @score = 0
  end

  def score_point
    @score += 1
  end


end
