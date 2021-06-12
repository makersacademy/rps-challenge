class Computer
  attr_reader :name

  def initialize
    @name = "CPU"
  end

  def move
    ["rock", "paper", "scissors"].sample
  end
end
