class Computer
  attr_reader :chosen

  def initialize
    @options = ["rock", "paper", "scissors"]
  end

  def choose_weapon
    @chosen = @options.shuffle.first
  end
end
