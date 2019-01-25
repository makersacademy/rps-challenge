class Computer
  attr_reader :name, :score, :move

  def initialize
    @name = "Computer"
    @score = 0
    @move = ""
  end

  def set_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

  def increment_score
    @score += 1
  end

end
