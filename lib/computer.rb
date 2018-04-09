class Computer

  attr_reader :move

  def initialize
    @move = [:rock, :paper, :scissors]
  end

  def computer_move
    move.sample
  end
end
