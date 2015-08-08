module Score_Calculator

  def rank moves
    return moves.keys if moves.values[0] == moves.values[1]
    moves.values[0].beats?(moves.values[1]) ? winning_throw = moves.values[0] : winning_throw =moves.values[1]
    winner = moves.invert[winning_throw]
    winner  
  end 
end   