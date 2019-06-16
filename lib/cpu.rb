class CPU

  def initialize
    @rps = ["Rock", "Paper", "Scissors"]
    @score = 10
  end

  def random
    @rps.sample
  end

end
