class Player

  def choose(move)
    moves = [:rock, :paper, :scissors]
    fail "uh-oh, that's not a valid choice" unless moves.include?(move)
    move
  end
end
