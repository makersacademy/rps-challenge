class Computer
  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def choice
    @options.sample
  end
end
