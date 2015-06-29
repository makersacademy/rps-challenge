class Cpu_player

  attr_reader :cpu_choice

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def cpu_choice
    cpu_choice = @options[(rand(3)-1)]
  end
end
