class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
    @score = 0
  end

  def make_move(choice)
    @move = choice
  end

  def make_random_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

  def add_point
    @score += 1
  end
end
