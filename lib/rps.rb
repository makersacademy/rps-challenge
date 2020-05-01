class Game
  attr_reader :rps

  def initialize
    @rps = ["Rock", "Paper", "Scissors"]
  end

  def computer_turn
    @rps.sample
  end
end
