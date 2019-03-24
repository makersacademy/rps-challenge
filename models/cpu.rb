class CPU

  attr_reader :choices, :name

  def initialize
    @name = "Pusheen Computer"
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def random_play
    @choices.sample
  end

end