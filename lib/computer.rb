class Computer

  DEFAULT_NAME = "Computer"

  attr_reader :name, :score
  attr_accessor :choice

  CHOICES = ["Rock", "Paper", "Scissors"]

  def initialize(name = DEFAULT_NAME)
    @name = name
    @score = 0
    @choice = nil
  end

  def random_select
    @choice = CHOICES.sample
  end

end