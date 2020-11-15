class CPU
  attr_reader :name, :choice, :score

  def initialize
    @name = :AI
    @score = 0
  end

  def choose
    @choice = [:rock, :paper, :scissors].sample
  end

  def receive_point
    @score += 1
  end
end