class Game

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def generate_opponent_move
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

end
