class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def make_move(move)
    @move = move
  end

  def make_random_move
    @move = ["ROCK", "PAPER", "SCISSORS"].sample
  end

end
