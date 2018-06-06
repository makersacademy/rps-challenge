class Computer

  DEFAULT_MOVES = ["Rock", "Paper", "Scissors"]
  # MOVES = DEFAULT_MOVES

  attr_reader :available_moves

  def initialize(available_moves = DEFAULT_MOVES)
    @available_moves = available_moves
  end

  def move
    @move = @available_moves.sample
  end

  def current_move
    @move
  end
  
end
