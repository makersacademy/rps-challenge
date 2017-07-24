class Computer

  attr_reader :weapon, :score

  def initialize
    @weapon = nil
    @score = 0
  end

  def computer_choice
    @weapon = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

  def score_up
    @score += 1
  end

end
