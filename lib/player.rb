class Player
  attr_accessor :name, :move

  MOVES = ["rock", "paper", "scissors"]

  def initialize(name = 'Jake')
    @name = name
  end

  def random_move
    @move = MOVES.sample.capitalize
  end
end