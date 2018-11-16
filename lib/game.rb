class Game

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def cpu_move
    @moves.sample
  end

end
