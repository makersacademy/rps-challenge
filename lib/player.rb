class Player

  attr_reader :name, :move

  MOVES = ["Rock", "Paper", "Scissors"].freeze

  def initialize(name = "Computer")
    @name = name
    @move = nil
  end

  def select_move(move = MOVES.sample)
    @move = move
  end

end
