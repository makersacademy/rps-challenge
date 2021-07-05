class Computer
  attr_reader :name, :score, :move

  def initialize
    @name = "Computer"
    @score = 0
  end

  def assign_move
    @move = ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
  end

  def increment_score
    @score += 1
  end

end
