class Computer

  attr_reader :name

  def initialize
    @choices = ["rock", "paper", "scissors"]
    @name = "Computer"
  end

  def weapon
    @choices.sample
  end

end
