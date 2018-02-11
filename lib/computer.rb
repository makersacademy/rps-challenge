class Computer

  MOVES = [:rock, :paper, :scissors]

  attr_reader :name, :move

  def name
    @name = "Computer"
  end

  def choose
    @move = MOVES.sample
  end

end
