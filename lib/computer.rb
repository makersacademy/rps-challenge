
class Computer

attr_reader  :name

  MOVES = [:Scissors, :Paper, :Rock]

  def initialize
    @name = name
  end

  def computer_move
     MOVES.sample
  end
end
