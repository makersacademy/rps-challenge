class Game

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def move 
    @moves.sample
  end
end