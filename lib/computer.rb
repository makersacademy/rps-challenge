class Computer
  attr_accessor :moves 

  MOVES = [:Rock, :Paper, :Scissors]

  def initialize
    @moves = MOVES
  end

  def move
    @moves.sample.to_s
  end
end
