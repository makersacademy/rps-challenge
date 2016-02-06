class Cpu
  def initialize
    @name = "CPU"
  end

  def pick
    @choice = ["Rock", "Paper", "Scissors"].sample
  end

  attr_reader :choice, :name
end