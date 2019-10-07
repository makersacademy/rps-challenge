class Computer
  attr_reader :move, :name

  MOVES = [:Rock, :Paper, :Scissors, :Lizard, :Spock]

  def initialize
    @name = "The computer"
    @move = ""
  end

  def pick_move
    @move = MOVES.sample
  end
end
