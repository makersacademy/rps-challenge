class Computer
  attr_reader :move, :name

  MOVES = [:Rock, :Paper, :Scissors]

  def initialize
    @name = "The computer"
    @move = ""
  end

  def pick_move
    @move = MOVES.sample
  end
end
