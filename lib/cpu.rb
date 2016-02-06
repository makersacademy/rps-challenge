class Cpu
  def initialize
    @name = "CPU"
  end

  def choice
    @cpu_hand = ["Rock", "Paper", "Scissors"].sample
  end

  attr_reader :cpu_hand, :name
end