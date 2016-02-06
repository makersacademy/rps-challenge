class Game
  def initialize(player)
    @players = player
  end

  def pick_cpu_hand
    @cpu_hand = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    return "Draw"
  end

  attr_reader :players
end