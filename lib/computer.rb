class Computer

  MOVES = [:rock, :paper, :scissors, :sponge, :fire, :water, :air]

  def move
    MOVES.sample
  end
end