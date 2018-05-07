class Bot

  attr_reader :choice

  def initialize
    @choice = rand_selection
  end

  private

  def rand_selection
    array = ["Rock", "Paper", "Scissors"]
    array[Kernel.rand(3)]
  end

end
