class Computer

  attr_reader :choices

  CHOICES = [:Paper, :Scissors, :Rock]

  def initialize
    @choices = CHOICES
  end

  def choose
    @choices.sample.to_s
  end
end
