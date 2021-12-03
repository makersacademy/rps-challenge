class Player

  attr_reader :name, :move

  MOVES = ["Rock", "Paper", "Scissors"].freeze

  def initialize(name = "Computer", move = MOVES.sample)
    @name = name
    @move = move
  end

end
