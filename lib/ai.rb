class AI

  POSSIBLE_MOVES = [:rock, :paper, :scissors]

  def move
    POSSIBLE_MOVES[Kernel.rand(POSSIBLE_MOVES.count)]
  end
end
