class Cpu
  attr_reader :name, :choice

  def initialize
    @name = "CPU"
  end

  def choose
    @choice = pick_random_move
  end

  private

  def pick_random_move
    ["Rock", "Paper", "Scissors"].sample
  end
end
