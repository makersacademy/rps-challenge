
class Computer

attr_reader  :name

  MOVES = [:scissors, :paper, :rock]

  def initialize
    @name = "Computer"
  end

  def computer_move
    MOVES.sample
  end
end
