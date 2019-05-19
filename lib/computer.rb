class Computer
  attr_reader :options

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def selection
    @options.sample
  end
end
