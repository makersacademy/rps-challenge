class Computer

  attr_reader :name, :wins

  DEFAULT_LIVES = 1

  def initialize
    @name = "Computer"
    @rps_values = ["rock", "paper", "scissors"]
    @wins = 0
  end

  def choice
    @rps_values.sample
  end

  def add_win
    @wins += 1
    self
  end

end
