class Score

  attr_reader :score

  def initialize
    @score = 0
  end

  def self.create
    @score = Score.new
  end

  def self.instance
    @score
  end

  def increase
    @score += 1
  end
  
end
