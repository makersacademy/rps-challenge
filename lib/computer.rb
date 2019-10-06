class Computer

  MOVES = [:rock, :paper, :scissors, :spock, :lizard]

  def move
    MOVES.sample
  end
end