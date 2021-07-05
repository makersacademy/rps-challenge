class CompMove

  attr_reader :move

  def initialize
    @move = ["rock", "paper", "scissors"].sample
  end

end
