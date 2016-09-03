class Computer

  attr_reader :name

  DEFAULT_LIVES = 1

  def initialize
    @name = "Computer"
    @rps_values = ["rock", "paper", "scissors"]
    @lives = DEFAULT_LIVES
  end

  def choice
    @rps_values.sample
  end

  def reduce_lives
    @lives -= 1
    self
  end

end
