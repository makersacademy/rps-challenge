class Game

  def initialize
    @rps = ["rock", "paper", "scissors"]
  end

  def play
    @rps.sample
  end
end
