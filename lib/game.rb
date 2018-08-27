class Game
  VALID_MOVES = ["ROCK", "PAPER", "SCISSORS"]
  attr_reader :comp_move
  attr_reader :valid_moves

  def initialize
    @valid_moves = VALID_MOVES
  end

  def comp_move
    @valid_moves.sample
  end
end
