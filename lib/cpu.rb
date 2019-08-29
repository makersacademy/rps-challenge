class CPU
  attr_reader :input, :score

  def initialize
    @rps = ["Rock", "Paper", "Scissors"]
    @input
    @score = 10
  end

  def random
    @input = @rps.sample
  end

  def calc_score
    @score -= 1
  end

  def reset_score
    @score = 10
  end
end
