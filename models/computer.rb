class Computer

  MOVES = [:rock, :paper, :scissors]

  def ai_move
    MOVES.sample
  end
end