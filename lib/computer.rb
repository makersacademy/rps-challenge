class Computer

  def initialize
    @rps = ["Rock", "Paper", "Scissors"]
  end

  def choice
    @rps.sample
  end
end
