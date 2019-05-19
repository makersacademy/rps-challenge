class Computer
  attr_reader :options

  def initialize
    @options = ["rock", "paper", "scissors"]
  end

  def selection
    @options.sample
  end
end
