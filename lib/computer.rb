class Computer
  attr_reader :moves

  MOVES = [:Rock, :Paper, :Scissors]

  def initialize
    @moves = MOVES
  end

  def computer_move
    @moves.sample.to_s
  end
end
