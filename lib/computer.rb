class Computer

  attr_reader :wins

  def initialize
    @choices = ["rock", "paper", "scissors"]
    @wins = 0
  end

  def choice
    @choices.sample
  end

  def win
    @wins += 1
  end

end
