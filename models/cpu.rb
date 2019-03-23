class CPU

  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def random_play
    @choices.sample
  end

end