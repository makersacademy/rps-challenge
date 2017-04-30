class Computer

  attr_reader :name, :score

  def initialize
    @name = "Computer"
    @score = 0
  end

  def record_score
    @score += 1
  end

  def choice
    [:rock, :paper, :scissors].sample
  end

end
