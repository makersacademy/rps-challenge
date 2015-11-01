class Computer

  attr_reader :choice, :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def choose
    @choice = @choices.sample
  end
end
