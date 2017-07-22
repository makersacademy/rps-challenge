class Computer
  MOVES = [:Rock, :Paper, :Scissors]

  def computers_move
    MOVES.sample.to_s
  end

end
