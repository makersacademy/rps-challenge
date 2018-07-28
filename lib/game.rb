class Game
  attr_reader :decision, :cpu

  def initialize(decision)
    @decision = decision
  end

  def cpu_decision
    @cpu = ["rock", "paper", "scissors"].sample
  end

end
