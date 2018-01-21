class Computer

  CHOICES = ["rock", "paper", "scissors"]

  attr_reader :wins

  def initialize
    @choices = CHOICES
    @wins = 0
  end

  def choice
    @choices.sample
  end

  def win
    @wins += 1
  end

end
